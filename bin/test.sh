#!/bin/bash

# Get the name of the program to check
program_name="pulseaudio"

# Get the PID of the program
pid=$(pidof $program_name)

# Check if the PID is not empty
if [ -z "$pid" ]; then
  # The program is not running
  echo "The program is not running."
else
  # The program is running
  echo "The program is already running with PID $pid."
fi
