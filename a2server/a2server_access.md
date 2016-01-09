---
layout: page
category: A2SERVER

---

You probably want to be able to get stuff on and off of A2SERVER, so that
means connecting to it from other computers.

You can browse your network and you should see either "raspberrypi" or
"a2server" as a server you can connect to. You can log in as Guest if asked.

On Mac OS X, it should appear under Shared in the sidebar of a Finder window,
or under "Network" from the "Go" menu of the Finder.

On Windows, it should appear under Network.

On Mac OS 7 through 9, open Chooser from the Apple menu and click on
AppleShare.

<div markdown="1" class="alert alert-info">
<small>
(If you can't browse to the server on your network, you may need to [log in
to A2SERVER][A2SERVER commands] to update, and if that doesn't work, to
find its IP address. On Mac OS X, enter the IP address under "Connect To
Server..." from the Go menu of the Finder; on Windows, type the IP address
following two backslash characters (\\) in an Explorer window.)
</small>
</div>

You will see two or three shared volumes: A2FILES, GSFILES, and, if you have
A2CLOUD installed, ADTDISKS. Avoid the A2FILES volume except for copying
things off of it. If you do want to put stuff on it, be careful to only use
ProDOS-compliant filenames (all caps, 15 characters max, starts with a letter,
and only contains letters/numbers/periods). Otherwise, you'll get unexpected
behavior like invisible files.

Unix-type computers can also use `scp` to copy files to and from A2SERVER;
Windows computers can also do so in the command window by using `pscp` in
[PuTTY][]. The shared volumes are within /srv/A2SERVER.

If you need to set the ProDOS file type of a file you have copied to A2SERVER,
[log in to A2SERVER][A2SERVER commands] and use `afptype`.

[A2SERVER commands]: a2server_commands.html
[PuTTY]: http://www.chiark.greenend.org.uk/~sgtatham/putty/
