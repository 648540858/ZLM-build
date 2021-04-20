FROM ubuntu:18.04

# ADD cmake-3.20.0-rc2-linux-x86_64.tar.gz /home

RUN apt apt update && \
    apt-get install build-essential cmake -y

CMD [ "/bin/bash" ]