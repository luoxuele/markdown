ffmpeg -y -i rtsp://admin:Luoxue123@192.168.10.5:554/stream1 -f segment -segment_time 7200  -segment_format mp4 -reset_timestamps 1 -strftime 1 -c:v copy -c:a aac  ipc-%Y%m%d-%H%M%S.mp4

https://ffmpeg.org/download.html
https://github.com/BtbN/FFmpeg-Builds/releases