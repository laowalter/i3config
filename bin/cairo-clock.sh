#!/usr/bin/env bash

/usr/bin/cairo-clock -i -s -d -w 200 -h 200 -x 4276 -y 25&
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
i3-msg workspace hide > /dev/null;

# Move it to the center for good measure
# i3-msg move position center > /dev/null;

# Wait for the application to quit
wait "${pid}";
