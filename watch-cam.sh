#!/bin/bash
#bash watch-cam.sh <device video> (i.e. /dev/video0)
gst-launch-1.0 -v v4l2src device=$1 ! tee name=t t. ! queue ! xvimagesink sync=false
