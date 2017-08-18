gst-launch-1.0 -v v4l2src device=/dev/video0 ! tee name=t t. ! queue ! xvimagesink sync=false
