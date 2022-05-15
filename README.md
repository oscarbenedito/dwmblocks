dwmblocks
=========
Modular status bar for dwm written in c.

Installation
------------
Edit config.mk to match your local setup (dwmblocks is installed into the
/usr/local namespace by default).

Afterwards enter the following command to build and install slock
(if necessary as root):

    make clean install

Running dwm
-----------
Add the following line to your .xinitrc to start dwmblocks using startx:

    dwmblocks &

Or run the 'dwmblocks' command.
