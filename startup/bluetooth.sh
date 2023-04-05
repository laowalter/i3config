#!/usr/bin/env bash

/usr/bin/pulseaudio -D 
/usr/bin/bluetoothctl select 00:1A:7D:DA:71:05
/usr/bin/bluetoothctl connect 04:52:C7:D1:BA:2C
