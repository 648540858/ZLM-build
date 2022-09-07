FROM ubuntu:18.04

# ADD cmake-3.20.0-rc2-linux-x86_64.tar.gz /home

RUN apt-get update && \
    apt-get -y install build-essential cmake wget git

CMD [ "/bin/bash" ]