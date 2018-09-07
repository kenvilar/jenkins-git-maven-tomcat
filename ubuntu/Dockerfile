FROM ubuntu:16.04
LABEL maintainer="kenvilar@gmail.com"

RUN apt-get -y upgrade && apt-get install -y build-essential
COPY root/.bashrc /root/.bashrc

WORKDIR /root

CMD ["bash"]
