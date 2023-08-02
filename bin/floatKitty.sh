#!/usr/bin/env bash

GLFW_IM_MODULE=ibus kitty -c ~/.config/i3/bin/floatKitty.conf &

pid="$!"

# Wait for the window to open and grab its window ID
winid=''
while : ; do
    winid="`wmctrl -lp | awk -vpid=$pid '$3==pid {print $1; exit}'`"
    [[ -z "${winid}" ]] || break
done

# Focus the window we found
wmctrl -ia "${winid}"

# Make it float
i3-msg floating enable > /dev/null;
i3-msg resize set width 1200 height 800 > /dev/null

# Move it to the center for good measure
# i3-msg move position center > /dev/null;

# Wait for the application to quit
wait "${pid}";
