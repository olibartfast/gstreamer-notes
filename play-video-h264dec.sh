#!/bin/sh
#working pipeline on jetson tk1 (arm), on x86 use avdec_h264 instead of omxh264dec
gst-launch-1.0 filesrc location=video.mp4 !  gdpdepay ! rtph264depay ! h264parse ! omxh264dec ! videoconvert ! videoscale ! nveglglessink -e
