#!/bin/bash

# ip=$(ifconfig  $1|grep "inet "|grep -v "inet6"| awk -v eth="$1"  '{print eth ": " $2}')
ip=$(hostname -i)
#speed=$(ethtool $1|grep Speed|awk -v eth="$1"  '{print ":" $2'})
speed=$(ifconfig $1| grep ether | awk '{print $(NF-1)}'|bc)
speed=$(($speed/1000))
echo $ip: $speed'.0Gb/s'
