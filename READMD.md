1. i3status should move to up level directory.

```
move ~/.config/i3/i3status ~/.config/i3/
```
2. i3blocks can reside in ~/.config/i3/

3. Install software required.

notice: nerd-fonts shoule open the USE for specific fonts.

```
$ emerge x11-misc/i3status x11-misc/i3blocks x11-misc/i3blocks-contrib
$ emerge -avq media-fonts/fontawesome media-fonts/exo media-fonts/nerd-fonts
$ emerge -avq sys-apps/lm-sensors
$ fc-cache -f
```
