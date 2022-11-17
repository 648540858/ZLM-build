FROM centos:7

# ADD cmake-3.20.0-rc2-linux-x86_64.tar.gz /home

RUN yum -y install gcc gcc-c++ git wget make && \
    cd /home && \
    wget https://cmake.org/files/v3.25/cmake-3.25.0-rc4-linux-x86_64.tar.gz && \
    tar xf cmake-3.25.0-rc4-linux-x86_64.tar.gz && \
    ln -s /home/cmake-3.20.0-rc2-linux-x86_64/bin/cmake /usr/bin/cmake

CMD [ "/bin/bash" ]
