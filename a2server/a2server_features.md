# A2SERVER

A2SERVER's central capability, sharing files to an Apple II, is provided by
[netatalk][] 2.2.4.

Here's the extra sauce that A2SERVER provides:

* available as a ready-to-use [Raspberry Pi][] operating system installer  
  (plus new [Pi Filler][Raspberry Pi Party] and [Pi Copier][Raspberry Pi Party] utilities for easy SD card
  creation and backup)

* available as a ready-to-use [VirtualBox][] appliance for Mac OS X, Windows,
  Linux, and Solari

* simple downloadable installation script for Ubuntu Linux or Raspbian takes
  care of setting up and configuring *everything*

* enables reliable operation by Asante, Farallon and Dayna bridges on both IIe
  *and* IIgs \[fixes contributed by Steven Hirsch and Geoff Body\]

* easy to configure for network boot, including ProDOS 8 and GS/OS download
  and installation

* can network boot both IIe and IIgs computers on the same network

* new ProDOS 8 tools (NETBOOT.P8 and NETBOOT.GSOS) for setting the IIg network
  boot default

* temporary ProDOS 8 network boot without changing GS/OS default \[contributed
  by Geoff Body\]

* GS/OS installer that can be run from folders rather than disk

* installs ProDOS 8 and GS/OS utilities for working with archive (ShrinkIt and
  GSHK),  
  disk images ([DSK2FILE][] / [Asimov][NF products] / [MountIt][]), and file (Apple
  ProDOS System Utilities)

* supports Wi-Fi when used with Apple AirPort or Time Capsul

* maintains correct dates during GS/OS folder copy \[fix contributed by Steven
  Hirsch\]

* uses randnum authentication for registered user sign-in (which alway works,
  unlike cleartext)

* supports login to shared volumes from latest versions of OS X and Window

* new Linux tool ([afptype][]) for setting ProDOS or
  classic Mac file types on shared volume

* new Linux tool ([cppo][]) for cataloging and copying
  files (with optional resource forks) out of ProDOS disk image

* [Linux commands][A2SERVER commands] to ease server maintenance

* installs Linux tools for working with ShrinkIt and other old and new archive
  formats ([nulib2][] and [unar/lsar][The Unarchiver])

<!--
* sets up Raspberry Pi for shell login from Apple II via USB-serial cable or
  Raspberry Pi console cable
-->

* blinks Raspberry Pi OK/ACT LED for ten seconds when netatalk has just
  started

* good documentation (or so I hope)
{: .space-after }

Any content unique to A2SERVER and not covered under a specific license is
licensed under the [WTFPL][].

[netatalk]: http://netatalk.sourceforge.net/
[Raspberry Pi]: http://www.raspberrypi.org/
[Raspberry Pi Party]: http://ivanx.com/raspberrypi/
[VirtualBox]: http://www.virtualbox.org/
[DSK2FILE]: http://www.dwheeler.com/6502/oneelkruns/dsk2file.html
[NF products]: http://www.ninjaforce.com/html/products.html
[MountIt]: http://www.brutaldeluxe.fr/products/apple2gs/mountit.html
[afptype]: scripts/tools/afptype.txt
[cppo]: scripts/tools/cppo.txt
[A2SERVER commands]: a2server_commands.html
[nulib2]: http://www.nulib.com/
[The Unarchiver]: http://unarchiver.c3.cx/
[WTFPL]: http://www.wtfpl.net/
