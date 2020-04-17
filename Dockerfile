FROM  ubuntu

RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.aliyun.com/ubuntu/#' /etc/apt/sources.list;

RUN apt update

RUN apt install -y libva2

RUN apt install -y libva-drm2

RUN apt install -y libvdpau1

ENTRYPOINT []
