#!/bin/bash

# hard input ip (input other test pc ip)
ffmpeg -i ftp://user:1@192.168.10.2/sample.mp4 -hls_allow_cache 0 -threads 8 -cpu-used 5 -deadline realtime -an http://localhost:12390/feed1.ffm

# play ffmpeg2
# ffmpeg -i /home/tomcat8/webapps/ROOT/MPSec/WebContent/images/sample.mp4 -hls_allow_cache 0 -threads 8 -cpu-used 5 -deadline realtime -framerate 24 -an http://localhost:12390/feed1.ffm
# play mpv
#mpv --playlist=/home/Desktop/etri-jsp-sh/list --cache=no