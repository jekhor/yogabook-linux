# Yoga Book Linux Porting Repository

This repository serves as a central hub for software related to running GNU/Linux
on Lenovo Yoga Book tablets (YB1-X91L/F, YB1-X90L/F).

## Status

Currently, it works on YB1-X91 models only (originally equipped with Windows
OS). Hans de Goede (@jwrdegoede) has contributed significantly to running Linux
on the Android variants of the tablet, but this has not been tested.

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

### OS Installation

1. Download an ISO image and write it to a USB flash drive (refer to
   [Debian's official site](https://debian.org/) for instructions).
2. Connect a powered microUSB OTG hub to the tablet.
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
9. Resolve any missing dependencies with the command `sudo apt -f install`.
10. Reboot. Verify that the new kernel is in use with the command `uname -a`
    (the output should include 'yogabook' in the version).
11. If the system has a newer kernel than the one you downloaded, reboot again,
    select the Yoga Book kernel from the boot menu, and verify that it boots
    successfully. After this, remove the default kernel from the system with
    `sudo apt remove linux-image-<version>` command.
12. The touch keyboard should now be operational, allowing you to detach
    the OTG hub and enjoy your Yoga Book.
