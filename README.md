## Meraki RTSP to HLS Stream

Convert a Cisco Meraki RTSP stream into a browser-friendly HLS stream using Docker and FFmpeg.
Allow you to use Cisco Meraki MV device OFFLINE without CISCO Meraki Dashboard
It's backup display solution to comply with HSE or securitiy requirement.

## What is this?

This project allows you to stream a Meraki RTSP camera feed (like `rtsp://192.168.x.x:9000/live`) into an HLS video stream accessible via a web browser — no plugins required.

Ideal for:
- Displaying the stream in Home Assistant or other dashboards.
- Publishing the video via a local or remote web server.
- Running autonomously in a container with minimal setup.
---

## Quick Start (via Dockge or Docker Compose)

### 1. Clone the repo (or use Dockge with the Git URL)

```bash
git clone https://github.com/JMSrulez/meraki-rtsp-hls.git
cd meraki-rtsp-hls
