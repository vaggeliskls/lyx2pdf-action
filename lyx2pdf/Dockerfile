FROM ubuntu:latest
LABEL org.opencontainers.image.authors="Vaggelis Kalligiannakis <vaggeliskls@gmail.com>"
WORKDIR /data
VOLUME /data

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install software-properties-common texlive-full -y

RUN add-apt-repository ppa:lyx-devel/release && apt-get update && apt-get install lyx -y

RUN rm -rf /var/lib/apt/lists/*