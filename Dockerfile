FROM ubuntu:22.04

RUN apt update && apt install -y ffmpeg nginx curl && \
    mkdir -p /usr/share/nginx/html/stream && \
    rm /etc/nginx/sites-enabled/default

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
COPY ffmpeg-to-hls.sh /usr/local/bin/ffmpeg-to-hls.sh

RUN chmod +x /usr/local/bin/ffmpeg-to-hls.sh

CMD bash -c "/usr/local/bin/ffmpeg-to-hls.sh & nginx -g 'daemon off;'"
