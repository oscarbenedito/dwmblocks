# dwmblocks

Modular status bar for dwm written in c.

# Usage

Install dwmblocks by running `sudo make install`. After that you can put
dwmblocks in your xinitrc or other startup script to have it start with dwm.

# Modifying blocks

The statusbar is made from text output from command line programs. Blocks are
added and removed by editing the `blocks.h` header file. If the file `blocks.h`
does not exist, a new one will be made by copying `blocks.def.h`.
