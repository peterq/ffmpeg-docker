FROM alpine:latest as build
RUN apk --update add ca-certificates && apk --no-cache add tzdata

FROM  ubuntu

RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.aliyun.com/ubuntu/#' /etc/apt/sources.list;

RUN apt update

RUN apt install -y libva2

RUN apt install -y libva-drm2

RUN apt install -y libvdpau1

COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --from=build /usr/share/zoneinfo /usr/share/zoneinfo

RUN apt install -y ffmpeg

ENTRYPOINT []
