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
- Keyboard vibration feedback

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
- Camera doesn't work.
- To have automatic screen rotation working, it should be supported by desktop
  environment. Try Gnome first.
- My Yoga Book randomly freezes after some time. If you have the same behavior,
  let me know.

