#!/usr/bin/env bash

# Check if the bose or keyboard is connected
mac_1="C8:E0:EB:03:4F:D1"  # 
mac_2="04:52:C7:D1:BA:2C"  #
command_1=`bluetoothctl devices Connected|grep $mac_1 |awk '{print $2}'`
command_2=`bluetoothctl devices Connected|grep $mac_2 |awk '{print $2}'`

if [[ $command_1 != $mac_1 ]]; then
   sudo /etc/init.d/bluetooth restart
   sleep 1
   bluetoothctl connect $mac_1
   bluetoothctl connect $mac_2
fi

if [[ $command_2 != $mac_2 ]]; then
   sudo /etc/init.d/bluetooth restart
   sleep 1
   bluetoothctl connect $mac_1
   bluetoothctl connect $mac_2
fi

