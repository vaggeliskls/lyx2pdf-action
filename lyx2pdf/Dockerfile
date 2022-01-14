FROM ubuntu:latest
LABEL org.opencontainers.image.authors="Vaggelis Kalligiannakis <vaggeliskls@gmail.com>"
WORKDIR /data
VOLUME /data

RUN apt install software-properties-common -y
RUN add-apt-repository ppa:lyx-devel/release
RUN apt-get update
RUN apt-get install -y texlive-full lyx clean
RUN rm -rf /var/lib/apt/lists/* 