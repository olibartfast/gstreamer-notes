#!/bin/sh
# receive stream with tcp from tcp server
# sender pipeline example with raspberry pi:
# raspivid -t 0 -h 720 -w 1080 -fps 25 -hf -b 2000000 -o - | gst-launch-1.0 -v fdsrc ! h264parse !  \
#  rtph264pay config-interval=1 pt=96 ! gdppay ! tcpserversink host=IP port=PORT 
gst-launch-1.0 tcpclientsrc host=IP port=PORT !  gdpdepay ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! videoscale ! xvimagesink -e

