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

ENTRYPOINT []
