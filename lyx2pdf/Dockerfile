FROM ubuntu:latest
LABEL org.opencontainers.image.authors="Vaggelis Kalligiannakis <vaggeliskls@gmail.com>"
WORKDIR /data
VOLUME /data

RUN sudo add-apt-repository ppa:lyx-devel/release
RUN sudo apt-get update
RUN sudo apt-get install -y texlive-full lyx
RUN sudo rm -rf /var/lib/apt/lists/* 