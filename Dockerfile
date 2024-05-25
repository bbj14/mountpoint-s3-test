FROM --platform=linux/arm64 python:3.12-slim

RUN apt update && apt upgrade -y

# Install Mountpoint for Amazon S3
RUN apt-get install -y wget fuse libfuse2 sudo
RUN wget https://s3.amazonaws.com/mountpoint-s3-release/latest/arm64/mount-s3.deb
RUN sudo apt-get install ./mount-s3.deb

WORKDIR /app

CMD bash mount_localstack_s3.sh && bash
