#!/bin/bash

ffmpeg -rtsp_transport tcp -i rtsp://192.168.128.91:9000/live \
  -c:v libx264 -preset veryfast -f hls \
  -hls_time 2 -hls_list_size 5 -hls_flags delete_segments \
  /usr/share/nginx/html/stream/stream.m3u8
