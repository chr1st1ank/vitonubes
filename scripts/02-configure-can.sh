#!/usr/bin/bash
set -e
set -x

 sudo ip link set can0 type can bitrate 250000
 sudo ifconfig can0 up    

