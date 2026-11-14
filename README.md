# Yoga Book Linux Porting Repository

This repository serves as a central hub for software related to running GNU/Linux
on Lenovo Yoga Book tablets (YB1-X91L/F, YB1-X90L/F).

## Status

Instructions are for YB1-X91 (Windows) models. Android (YB1-X90) version should works
also, with some exception (check the Issues). To boot from USB, enable USB host and
disable Secure Boot as described here:
https://web.archive.org/web/20220516142318/https://poz1.com/windows-on-android-lenovo-yogabook/

Most of the hardware is functional, with the following exceptions:
- Cameras
- LTE modem (in L modifications of the tablet)

Most Linux patches have been mainlined, except for the sound drivers.

## What You Need to Know

The Yoga Book tablet features a sensor keyboard, which essentially functions as
a touchpad. To use it as a keyboard, a userspace 'driver' is utilized.
Therefore, installing the OS without connecting a physical keyboard via an OTG
hub can be challenging.

## Quick Start

I personally use Debian, so the instructions below describe its installation.
Ubuntu should also be compatible. For other distributions, you may need to
download and build packages from the source.

Instructions are approximate, details may vary. Please create an issue if
something goes wrong.

### Repositories

If you want to use a prepackaged repository, there are repositories available for Arch Linux
(and derivatives), Debian (and derivatives), Ubuntu (and derivatives) and Alpine Linux (and derivatives).

Check the Wiki on how to install it using the repositories on your system. Currently supported are:

- Ubuntu 24.04, 25.10 and 26.04
- Debian Trixie, Forky, Testing and Sid
- Arch Linux
- Alpine Linux

Check these links for the build scripts:

- [Debian/Ubuntu](https://gitlab.imanuel.dev/packages/yogabook/building/apt-build)
- [Arch Linux](https://gitlab.imanuel.dev/packages/yogabook/building/pacman-build)
- [Alpine Linux](https://gitlab.imanuel.dev/packages/yogabook/building/apk-build)

The package repo is found [here](https://packages.ulbricht.casa/linux-yogabook/-/packages).

If you want to use a different distro like Fedora, please comment
[this](https://github.com/jekhor/yogabook-linux/issues/54) issue.

### OS Installation

1. Download an ISO image and write it to a USB flash drive (refer to
   [Debian's official site](https://debian.org/) for instructions).
2. Connect a powered microUSB OTG hub to the tablet (non-powered may works also, let's try).
3. Connect the USB flash drive and a keyboard to the hub.
4. Power on the tablet while holding the Volume Up key.
5. Select the USB drive in the boot menu.
6. Install Debian as you normally would, and boot into the new system. The
   Gnome desktop is recommended because it supports screen rotation based on
   accelerometer data.
7. Download the latest `.deb` packages (check the Tags section in this repository):
   - `linux-image`
   - `touch-keyboard`
   - `yogabook-support`
   - `alsa-ucm-conf-yogabook`
8. Open a terminal emulator, navigate to the directory containing the `.deb`
   files, and install them using the command `sudo dpkg -i --force-depends *.deb`.
10. Resolve any missing dependencies with the command `sudo apt -f install`.
11. For Debian, install firmware packages also: `sudo apt install firmware-intel-sound firmware-brcm80211`.
12. Reboot. Verify that the new kernel is in use with the command `uname -a`
    (the output should include 'yogabook' in the version).
13. If the system has a newer kernel than the one you downloaded, reboot again,
    select the Yoga Book kernel from the boot menu, and verify that it boots
    successfully. After this, remove the default kernel from the system with
    `sudo apt remove linux-image-<version>` command.
14. The touch keyboard should now be operational, allowing you to detach
    the OTG hub and enjoy your Yoga Book.

## Troubleshooting

Known issues:
- Cameras don't work out of the box on the YB1-X91F: `atomisp` registers its
  video nodes from the completion callback of its v4l2-async notifier, which
  only fires once every ACPI-declared sensor is bound. The front OVTI2740
  firmware reports `CsiLanes=1`, so `ov2740` rejects it with `-EINVAL`, the
  notifier never completes and no video node is created at all - the healthy
  rear OV8858 is dragged down with it. A DMI-scoped `CsiLanes` override for
  this sensor exists in "[PATCH v5 07/16] media: atomisp: Add Yoga Book camera
  configuration" (pending), but it only matches `Lenovo YB1-X91L`; the
  YB1-X91F needs its own entry - a single-entry patch is linked from the PR
  that adds this note:
  https://gist.github.com/KanzakiK/855d64dd8484304fb49181247c6d0280
  - Automatic 3A is not enabled in this stack: the sensor drivers expose
    manual controls only. Manual controls do work, but they must be applied
    while streaming (the sensor drivers gate `s_ctrl` on runtime PM): the
    front OV2740 has working `analogue_gain` and `red_balance` /
    `blue_balance`; the rear OV8858 has working exposure/analogue gain, and
    its digital gain register `0x350a` (0.25x steps, 1x = `0x04`, max 3.75x)
    is usable with the driver fix linked from the PR.
  - On the rear OV8858 the MWB red/blue balance registers do not affect its
    RAW10 output, so the rear stays green-tinted and needs post-processing
    (or display-side colour correction). The front can be white-balanced in
    the driver.
  - The front sensor returns garbage on the first streaming session after each
    boot; a second start/stop cycle gives a proper image.
  - Verified on a YB1-X91F; the YB1-X91L was not tested.
- To have automatic screen rotation working, it should be supported by desktop
  environment. Try Gnome first.
- My Yoga Book randomly freezes after some time. If you have the same behavior,
  let me know.

