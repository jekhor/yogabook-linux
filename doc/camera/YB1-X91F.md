# Camera support on the Lenovo Yoga Book YB1-X91F

Status as of 2026-11-14, measured on a YB1-X91F (Atom x5-Z8550,
Zorin OS 18.1, kernel `7.2.0-yogabook-20260901-232318`).

| Item | Front (`ov2740`) | Rear (`ov8858`) |
|---|---|---|
| Sensor mode | 1932x1092 | 1632x1224 (2x2 binning) |
| Usable output | 1916x1076 YU12 @30 | 1616x1208 YU12 @30-42 |
| Maximum usable resolution | 1916x1076 | **1616x1208** (8MP is not usable, see below) |
| Manual exposure / gain | yes | yes (applied while streaming) |
| White balance | `red_balance` / `blue_balance` | none (RAW output bypasses the MWB block) |
| Autofocus | none | VCM present but not linked; manual focus only |
| GNOME Cheese / PipeWire apps | works with the fixes below | works with the fixes below |

The rear camera is the one on the **keyboard edge**, not under a hole in the
back cover. Both sensors output raw Bayer data; the ISP inside atomisp converts
it to YU12. There is no automatic 3A (AE/AWB/AF) anywhere in this stack.

Four independent layers have to work before a normal desktop camera
application sees a picture. Only the first one is a device-tree/DMI problem;
the other three are generic driver or userspace bugs that also affect other
atomisp machines.

## 1. No `/dev/video*` at all: missing DMI entry

`atomisp` registers its video nodes from the completion callback of its
v4l2-async notifier, and the notifier only completes once **every**
ACPI-declared sensor has been bound. On the YB1-X91F the front `ov2740` is
rejected because the firmware reports `CsiLanes=1` while the driver hardcodes
two lanes:

```
atomisp-isp2: Found supported sensor INT3477:00      <- rear OV8858, healthy
atomisp-isp2: Found supported sensor OVTI2740:00
atomisp-isp2: Connected 2 cameras
ov2740: error -EINVAL: number of CSI2 data lanes 1 is not supported
# result: /dev/video* absent, zero video4linux / media / v4l-subdev nodes
```

The DMI-scoped `CsiLanes` override from Maurizio Casciano's atomisp series
(`[PATCH v5 07/16] media: atomisp: Add Yoga Book camera configuration`, still
pending) only matches `Lenovo YB1-X91L`; the X91F needs its own DMI entry.

Patch and analysis:
<https://gist.github.com/KanzakiK/855d64dd8484304fb49181247c6d0280>

## 2. GStreamer / GNOME camera applications hang: atomisp subdev ioctls

After fix 1, `/dev/video0` works with `v4l2-ctl`, `v4l2src` and guvcview, but
GNOME Cheese and GNOME Snapshot freeze and `gst-device-monitor-1.0 Video` stops
at `Probing devices...`.

`isp_subdev_ioctl()` is registered as the subdev core `.ioctl` callback but
returns 0 for every command. On the `Atom ISP` subdev node
(`/dev/v4l-subdev3`) this makes `VIDIOC_ENUMINPUT` succeed for every index and
return a zeroed, empty input, so enumeration never terminates. GStreamer's
v4l2 device provider probes subdev nodes, so the whole probe hangs.

Fix: return `-ENOIOCTLCMD` for unsupported commands (the standard semantic for
this callback) instead of 0. `VIDIOC_ENUMINPUT` then fails as expected and
device probing completes immediately.

Patch: `0002-media-atomisp-fix-subdev-ioctl.patch` in the gist above.

## 3. PipeWire cannot negotiate buffers: spa-v4l2 mmap fallback

With a working device node, PipeWire still fails to stream atomisp:

```
spa.v4l2: '/dev/video0' mmap: Invalid argument
pw.port: negotiate buffers on node: -22 (Invalid argument)
pw.link: allocating -> error (can't negotiate buffers on port)
# and, on teardown, pipewire dies with SIGSEGV
```

atomisp's videobuf2 queue advertises `VB2_MMAP | VB2_DMABUF`, so the USERPTR
import that spa-v4l2 tries first is rejected. The upstream PipeWire fallback
(`v4l2: Add mmap fallback when USERPTR is not supported`, commit `b2dd7335`)
then maps the v4l2 buffer with `PROT_READ, MAP_PRIVATE`, while videobuf2
requires `VM_SHARED` and returns `-EINVAL`. The same patch also leaves
`mmap_ptr`/`ptr` set after clearing buffers, so the next negotiation copies
from an unmapped address and crashes the daemon.

Fix (userspace, rebuild `libspa-v4l2.so`):

- map the fallback buffer with `MAP_SHARED`
- clear `ptr` / `mmap_ptr` / `outbuf` when buffers are cleared and validate the
  dequeued buffer index
- close `/dev/video0` when the node is suspended: atomisp allows only one open,
  so otherwise `v4l2-ctl`/other tools get `Device or resource busy` after
  PipeWire has streamed once

After the fix: `gst-device-monitor-1.0` lists `ATOM ISP (V4L2)`, Cheese streams
at 30 fps (1916x1076), pipewire stays alive across start/stop cycles, and the
device is released about 6 seconds after the client exits.

The same code exists in upstream PipeWire master, so this affects any v4l2
driver without USERPTR support on kernels whose videobuf2 enforces
`VM_SHARED`. A separate PipeWire report/patch is being prepared; no binary is
shipped in this repository.

## 4. Sensor-side limits

- **8MP is not usable.** The OV8858 driver has a 3264x2448 mode, but the
  atomisp preview pipeline clamps the format to 1920x1440
  (`atomisp_cmd.c: atomisp_adjust_fmt()`), which ends up as 1616x1208. The
  still-capture run mode accepts a 3248x2432 `S_FMT` but never delivers a
  frame (it depends on disabled private ioctls). Maximum usable resolution is
  therefore 1616x1208.
- **Rear colour.** The OV8858 outputs 10-bit RGB Bayer only; its MWB
  red/blue registers are outside the RAW path, so they do not change the
  picture. The rear stays green-tinted and needs display-side or post
  processing. Brightness can be raised with the `0x350a` digital gain
  (0.25x steps, 1x = `0x04`, max 3.75x) after applying the driver fix in
  <https://gist.github.com/KanzakiK/8f0baf91f005e0431ec474205f6c5843>.
- **Control timing.** Manual `exposure`, `analogue_gain` and the front
  `red_balance`/`blue_balance` work, but the sensor drivers gate `s_ctrl` on
  runtime PM: writes made while the stream is stopped look like they are
  ignored. Apply them while streaming.

## Known open issue: first stream after boot is garbage

The first `VIDIOC_STREAMON` after each boot returns noise; a second
start/stop cycle gives a proper image. Reproduced across three reboots. This is
**not fixed** by the items above and is tracked in
<https://github.com/jekhor/yogabook-linux/issues/80> together with a boot-time
warm-up service.
