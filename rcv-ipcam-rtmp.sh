gst-launch-1.0 rtmpsrc location=rtmp://<ip-address>:<port> ! decodebin ! videoconvert ! videoscale ! ximagesink -e
 
