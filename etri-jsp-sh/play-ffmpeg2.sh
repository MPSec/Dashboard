ffmpeg -i /home/tomcat8/webapps/ROOT/MPSec/WebContent/images/sample.mp4 -hls_allow_cache 0 -threads 8 -cpu-used 5 -deadline realtime -framerate 24 -an http://localhost:12390/feed1.ffm

