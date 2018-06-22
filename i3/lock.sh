#!/usr/bin/env bash

icon="$HOME/.i3/lock_icon.png"
tmpbg='/tmp/screen.png'
font='Ubuntu'
text='Type password to unlock'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
# convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" -blur 0x6 -define modulate:colorspace=HSB -modulate 60 "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte -font "$font" \
        -pointsize 26 -fill white -annotate +0+160 "$text" "$tmpbg"
i3lock -n -i "$tmpbg" \
    --insidecolor=37344500 --ringcolor=ffffffff --line-uses-inside \
    --keyhlcolor=282936ff --bshlcolor=d23c3dff --separatorcolor=00000000 \
    --insidevercolor=55ea3400 --insidewrongcolor=d23c3d88 \
    --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="w/2:h/2" \
    --radius=80 --veriftext="" --wrongtext="" --indicator --ring-width=12 \
    --noinputtext=""
