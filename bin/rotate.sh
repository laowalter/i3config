#!/usr/bin/env bash

# Initialize the RANDOM variable
RANDOM=$$
# Function to randomly select a picture file from a given directory
# and return the file full path

randomFile(){

  # dir_path="${HOME}/.config/i3/wallpaper/h"
  
  # Check if the directory path exists
  if [ ! -d "$1" ]; then
     #return ""
     echo "dir_pir_path is empty"

  fi

  # Get a list of all picture files in the directory
  picture_files=$(find $1 -type f -name "*.jpg" -o -name "*.png")
  # Split the string by space
  picture_files=(${picture_files// / })
  file_numbers=${#picture_files[@]}
  # echo "$file_numbers"
  random=$((${RANDOM} % ${file_numbers}))
  random_file=${picture_files[random]}

  echo $random_file
}
  
h_path="$HOME/.config/i3/wallpaper/h"
h_path_1=$(randomFile $h_path)
h_path_2=$(randomFile $h_path)
echo "horizontal pic1: ${h_path_1}"
echo "horizontal pic2: ${h_path_2}"

v_path="${HOME}/.config/i3/wallpaper/v"
v_path=$(randomFile $v_path)
echo "vertical pic: ${v_path}"

output=$(/usr/bin/xrandr |grep DP-0|grep 2560x1440)
if [ -z "$output" ]
then
  echo "Rotated convert to Normal"
  eval "/usr/bin/xrandr --output DP-0 --rotate normal"
  eval "/usr/bin/feh --bg-scale ${h_path_1} --bg-scale ${h_path_2}"
else
  echo "Normal convert to Rotated"
  # --panning 0x0 remove the gap between to screen after rotated.
  eval "/usr/bin/xrandr --output DP-0 --rotate left  --panning 0x0"
  eval "/usr/bin/feh --bg-scale ${v_path}  --bg-scale ${h_path_1}"
fi

exit 0
