FROM ubuntu:16.04

RUN apt-get -y upgrade && apt-get install -y build-essential
COPY root/.bashrc /root/.bashrc
