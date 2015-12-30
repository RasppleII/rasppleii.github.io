# A2SERVER

You can easily install A2SERVER on Debian, Ubuntu, or Raspbian Linux by using
the A2SERVER install scripts.

While these are the only Linux distributions the scripts have been tested on,
other Debian-derived distributions may work as well, provided they're not
based on Debian 8, don't use kernel 3.12 through 3.15, have AppleTalk
networking support available as a kernel module or compiled into the kernel
itself, and their repositories contain the packages the scripts require. The
user running the scripts needs a bash shell, sudo privileges, and a search
path containing all the "bin" and "sbin" directories.


__Debian or Ubuntu Linux__{: .uline } _(Tested on Debian 7.8.0 and Ubuntu Server 12.04 LTS. Note that Ubuntu 14.04
LTS includes kernel 3.13, which is *not* compatible with A2SERVER; you will
need to upgrade it to 3.16 or later. Debian 8 and Ubuntu 15 *cannot* be used
at this time.)_{: .fine-print .no-style }

1. [Create a new virtual machine][A2SERVER prepvm] (skip if installing on a
   real machine)
2. [Install Debian][A2SERVER installubuntu] (or Ubuntu) on the virtual or
   real machine

__Raspberry Pi__{: .uline }

1. [Download Raspbian][RPi downloads]
2. [Perform Raspberry Pi setup][A2SERVER raspberrypi]
{: .space-after }

Once you are up and running in Linux, you can execute the automated setup
scripts to download, install, and configure the A2SERVER software. To use
these, [log in to Linux][A2SERVER commands], and type:

~~~ bash
wget appleii.ivanx.com/a2server/setup; source setup
~~~

Confirm that you want to proceed, enter the password again, and go get a
sandwich, but come back so you can answer questions when prompted.

Once it's done, check out the links on the [A2SERVER home page][A2SERVER] for
next steps.

If you'd like to set things up manually, or are curious as to what's
happening, you can [view the contents of the setup scripts][A2SERVER scriptdetails].

[A2SERVER prepvm]: a2server_prepvm.htnl
[A2SERVER installubuntu]: a2server_installubuntu.html
[RPi downloads]: http://www.raspberrypi.org/downloads/
[A2SERVER raspberrypi]: a2server_raspberrypi.html
[A2SERVER commands]: a2server_commands.tml
[A2SERVER]: index.html
[A2SERVER scriptdetails]: a2server_scriptdetails.html
