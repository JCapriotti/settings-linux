#!/bin/bash

# From https://ubuntuforums.org/showthread.php?t=1364460
# 1. Get output name (i.e. VGA1, DVI-I-1, etc)
#    randr
# 2. Get modes
#    cvt 1920 1080
# 3. Call newmode
#    xrandr --newmode <modeline>
# 4. Add it
#    xrandr --admode VGA1 1920x1080_60.00


xrandr --newmode "1920x1200"  193.25  1920 2056 2256 2592  1200 1203 1209 1245 -hsync +vsync
xrandr --addmode DVI-I-1 1920x1200

xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode DVI-I-1 1920x1080

xrandr --newmode "2560x1440"  312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync
xrandr --addmode DVI-I-1 2560x1440

xrandr --newmode "1680x1050"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
xrandr --addmode DVI-I-1 1680x1050

xrandr --output DVI-I-1 --mode 1680x1050

