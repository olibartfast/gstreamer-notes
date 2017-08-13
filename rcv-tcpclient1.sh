gst-launch-1.0 tcpclientsrc host=IP port=PORT !  gdpdepay ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! videoscale ! xvimagesink -e

