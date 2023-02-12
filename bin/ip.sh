#!/bin/bash
ip=$(ifconfig  $1|grep "inet "| awk -v eth="$1"  '{print eth ":" $2}')
speed=$(ethtool $1|grep Speed|awk '{print "(" $2 ")"}')
echo $ip$speed
