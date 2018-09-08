#!/bin/sh

#stream from pc(linux) cam with h264 encoding 
gst-launch-1.0 -v v4l2src device=/dev/video0  ! videoscale ! videoconvert ! \ 
videorate ! video/x-raw,framerate=30/1  ! \ 
x264enc tune=zerolatency ! h264parse ! mpegtsmux ! tcpserversink host=IP port=PORT



#gst-launch-1.0 -v v4l2src device=/dev/video0  ! videoscale ! videoconvert ! videorate ! \
# video/x-raw,framerate=30/1  ! x264enc ! video/x-h264,profile=high ! h264parse ! mpegtsmux ! \
# tcpserversink host=IP port=PORT

  
on windows use "ksvideosrc device-index=0" in place of "v4l2src device=/dev/video0"  
