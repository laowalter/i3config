#!/usr/bin/env bash

echo "start myrename_workspace.sh" >> ~/log
apps=(Local Webui Geeqie)  # Array of app names

window_class=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk '{print $NF}')
for app in "${apps[@]}"; do
  if [[ $element==$app ]]; then
    i3-msg "[class=\"$app\"] move container to workspace $app, focus"
    break
  fi
done
