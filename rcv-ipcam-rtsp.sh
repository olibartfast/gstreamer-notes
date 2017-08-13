gst-launch-1.0 rtspsrc 
location=rtsp://<cam_ip_address>  !  decodebin ! 
autovideosink

