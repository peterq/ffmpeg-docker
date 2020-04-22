FROM  ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.aliyun.com/ubuntu/#' /etc/apt/sources.list;

RUN apt update

RUN apt install -y tzdata

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' > /etc/timezone

RUN apt install -y libva2

RUN apt install -y libva-drm2

RUN apt install -y libvdpau1

RUN apt install -y ca-certificates

RUN apt install -y ffmpeg

#RUN  apt install build-essential

ENTRYPOINT []
