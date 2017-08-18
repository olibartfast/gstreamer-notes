#receive ipstream from ip-cam rtsp protocol

gst-launch-1.0 rtspsrc location=rtsp://<cam_ip_address>:<port>  !  decodebin ! autovideosink
#gst-launch-1.0 -t -v -c rtspsrc location=rtsp://<cam_ip_adrr>:<port> !  decodebin ! videoconvert ! videoscale !  ximagesink
