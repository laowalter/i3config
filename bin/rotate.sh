#!/usr/bin/env bash

output=$(/usr/bin/xrandr |grep DP-0|grep 2560x1440)
echo $output
if [ -z "$output" ]
then
  echo "Rotated"
  exec /usr/bin/xrandr --output DP-0 --rotate normal
else
  echo "Not Rotated"
  exec /usr/bin/xrandr --output DP-0 --rotate right
fi
