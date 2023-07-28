#!/usr/bin/env bash

# Get the name of the program to check
program_name="pulseaudio"

# Get the PID of the program
pid=$(pidof $program_name)

# Check if the PID is not empty
if [ -z "$pid" ]; then
  kill -9 $pid
fi

/usr/bin/pulseaudio --start
sudo /etc/init.d/alsasound restart
/usr/bin/bluetoothctl connect 04:52:C7:D1:BA:2C
