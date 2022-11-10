# 基础知识

container/file  特定格式的多媒体文件，比如mp4,flv,mkv
stream  媒体流
frame/packet    frame对应的是压缩前的数据，packet对应的是压缩后的数据

codec  编码解码器
mux    复用     不同的流按照某种规则放入容器
demux   解复用

# url
https://ffmpeg.org/
https://github.com/FFmpeg/FFmpeg
https://git.ffmpeg.org/ffmpeg.git

https://itsfoss.com/ffmpeg/#basic-usage
https://ffmpeg.org/ffmpeg.html

# 安装
    ffmpeg -version

    ffmpeg  ffmpeg video converter
    ffplay  simple media player简单媒体播放器/FFplay media player
    ffprobe simple multimedia streams analyzer/ffprobe media prober

    ffmpeg -h
    ffmpeg -h long
    ffmpeg -h full

    ffmpeg -h full | findstr 264 //windows
    ffmpeg -h full | grep 264

    //分类查询
    ffmpeg -version

    -version
    -buildconf  编译配置
    -formats    muxers+ demuxers
    -muxers     复用器
    -demuxers   解复用器
    -devices
    -codecs     编解码器
    -encoders   编码器
    -decoders   解码器
    -bsfs
    -protocols
    -filters
    -pix_fmts   pixel formats 像素格式
    -layouts    
    -colors



    ffmpeg -formats | grep mp4
    ffmpeg -muxers | grep mp4
    ffmpeg -codecs  | grep h264

    ffmpeg -h muxer=flv
    ffmpeg -h filter=atempo (调整音频播放速率)
    ffmpeg -h encoder=libx264

    lspci
    lspci | grep -i vga
    lspci -v -s 00:02.0


# 入门使用
    ffmpeg [options] [[infile options] -i infile]... {[outfile options] outfile}...

    ffmpeg.exe -i '.\Fisherman and His Wife.mp4' -codec copy -ss 10 -t 20 -f mp4 out.mp4

    -f fmt              force format
    -c codec            codec name
    -codec codec        codec name
    -ss time_off        set the start time offset
    -t duration         record or transcode "duration" seconds of audio/video


//保留封装格式
ffmpeg.exe -i '.\Fisherman and His Wife.mp4' -acodec copy -vn audio.mp4
ffmpeg.exe -i '.\Fisherman and His Wife.mp4' -vcodec copy -an video.mp4

//提取视频


# 字幕/subtitle

srt subtitle
cc  Closed Caption  隐藏字幕，闭合字幕
bcc b站cc字幕
vtt webvtt(Web Video Text Tracks),格式和srt类似

ffmpeg -i '.\Fisherman and His Wife.mp4' -map 0:s:0 '.\Fisherman and His Wife.srt'
ffmpeg.exe -i '.\Fisherman and His Wife.mp4' -c:v hevc_amf '.\Fisherman and His Wife.bak.mp4'
ffmpeg.exe -hwaccels dxva2 -i '.\Fisherman and His Wife.mp4' -c:v hevc_amf '.\Fisherman and His Wife.bak2.mp4'

 ffmpeg.exe -i '.\Melisande Story _ Stories for Teenagers _ English Fairy Tales.webm' -c:a copy -c:v copy '.\Melisande Story _ Stories for Teenagers _ English Fairy Tales.mp4'

# audio

ffmpeg.exe -i '.\Fisherman and His Wife.mp4' -vn audio.mp3
ffmpeg.exe -i '.\Fisherman and His Wife.mp4' -vn -ab 128k audio2.mp3
ffmpeg.exe -i '.\Fisherman and His Wife.mp4' -vn -b:a 128k audio3.mp3
Some common bit rates are 96k, 128k, 192k, 256k, 320k (highest bitrate supported by mp3).

Audio options:
-aframes number     set the number of audio frames to output
-aq quality         set audio quality (codec-specific)
-ar rate            set audio sampling rate (in Hz)
-ac channels        set number of audio channels
-an                 disable audio
-acodec codec       force audio codec ('copy' to copy stream)
-af filter_graph    set audio filters

Video options:
-vframes number     set the number of video frames to output
-r rate             set frame rate (Hz value, fraction or abbreviation)
-fpsmax rate        set max frame rate (Hz value, fraction or abbreviation)
-s size             set frame size (WxH or abbreviation)
-aspect aspect      set aspect ratio (4:3, 16:9 or 1.3333, 1.7777)
-vn                 disable video
-vcodec codec       force video codec ('copy' to copy stream)
-timecode hh:mm:ss[:;.]ff  set initial TimeCode value.
-pass n             select the pass number (1 to 3)
-vf filter_graph    set video filters
-ab bitrate         audio bitrate (please use -b:a)
-b bitrate          video bitrate (please use -b:v)
-dn                 disable data
