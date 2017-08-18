#!/bin/sh

#check before for the webcam format(ex. YUY2, YV12 etc...)
#gst-launch-1.0 -v v4l2src device=/dev/video0 ! video/x-raw,format=YV12,width=1280,height=720 \
#! tee name=t t. ! queue ! xvimagesink sync=false t. ! queue ! videoconvert ! videoscale !\
#x264enc tune=zerolatency ! h264parse ! mp4mux ! \
#filesink location=video.mp4 sync=false


gst-launch-1.0 -v -t -c v4l2src device=/dev/video0 \
    ! video/x-raw,format=YV12,width=1280,height=720 \
    ! tee name=t t. ! queue ! xvimagesink sync=false t. ! queue ! \
    videoconvert ! x264enc tune=zerolatency ! h264parse ! \
    matroskamux ! filesink location='video.mkv' sync=false
