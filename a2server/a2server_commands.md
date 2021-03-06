---
layout: page
category: A2SERVER

---

Sometimes you need to access the A2SERVER command line to set up network boot
or do other stuff. A list of commands is below.

If you are running A2SERVER on a Raspberry Pi without a screen and keyboard
attached, see how to
[log in to a Raspberry Pi][A2SERVER rpi-login].

Otherwise, log in on your local console or virtual machine window, or via SSH
on another computer. On Mac OS X, or Windows with [Bonjour Print Services][]
installed, you can use "raspberrypi.local" for your SSH address, or
"a2server.local" if not on a Pi. If that doesn't work, try updating
A2SERVER by typing `a2server-setup`.

<div markdown="1" class="alert alert-dismissible alert-info">
<small>
If it still doesn't work, or you don't want to install Bonjour Print
services for Windows, you will need to use A2SERVER's IP address instead,
which you can see by typing `showip`. You can create a DHCP reservation in
your router to give A2SERVER the same IP address every time. To do this,
you'll need the MAC (Ethernet) address of the machine (or virtual machine)
running A2SERVER, which you can see by typing `showmac`. If you are using the
premade virtual machine, the MAC is `08:00:03:F2:FF:59`.
</small>
</div>

The default username is either "pi" for Raspberry Pi, and otherwise
"user1". The password is "apple2". <small>(The password is "raspberry" for an
standard installation of Raspbian; you can use the
[installer script][A2SERVER installer] to install A2SERVER.)</small>

Shared volumes can be found at /srv/A2SERVER. Netatalk configuration files
are in /usr/local/etc/netatalk.

Once logged in, you can enter the following commands.

(If any of these yield "command not found", refresh the command list by
typing `a2server-setup`, answering "no" to all prompts if you like.)

{% capture a2server_git_url %}https://cdn.rawgit.com/RasppleII/a2server/{{ site.a2server_release }}/scripts/tools/a2server-help.txt{% endcapture %}
{% include rfile.html url=a2server_git_url %}

[A2SERVER rpi-login]: a2server_raspberrypi_login.html
[Bonjour Print Services]: http://support.apple.com/kb/dl999
[A2SERVER installer]: a2server_installer.html
