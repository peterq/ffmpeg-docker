FROM  ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.aliyun.com/ubuntu/#' /etc/apt/sources.list;

RUN apt update

RUN apt install -y tzdata

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone

RUN apt install -y ca-certificates

RUN apt install -y ffmpeg

RUN  apt install -y build-essential

RUN  apt install -y wget
RUN  wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz

RUN tar -C /usr/local -xzf go1.14.2.linux-amd64.tar.gz

RUN apt install -y git

RUN echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile

RUN apt install -y pkg-config

RUN apt install -y libavdevice-dev libavfilter-dev libswscale-dev libavcodec-dev libavformat-dev libswresample-dev libavutil-dev

RUN apt-get -y install yasm

RUN wget https://qy-enfi-deploy.oss-cn-hangzhou.aliyuncs.com/pbox/storage/buld/FFmpeg-n4.2.1.tar.gz

RUN mkdir -p /root/FFmpeg-n4.2.1 && tar -C /root/FFmpeg-n4.2.1 -xzf FFmpeg-n4.2.1.tar.gz

RUN cd /root/FFmpeg-n4.2.1/FFmpeg-n4.2.1 && ./configure && make -j 8 && make install

RUN ffmpeg -version

ENTRYPOINT []
