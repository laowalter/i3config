#!/usr/bin/env bash

# Get the name of the program to check
program_name="pulseaudio"

# Get the PID of the program
pid=$(pidof $program_name)

# Check if the PID is not empty
if [ -z "$pid" ]; then
  kill -9 $pid
fi
