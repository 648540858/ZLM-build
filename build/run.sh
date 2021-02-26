#!/bin/bash  
mkdir -p /home/zlm && cd /home/zlm
rm -rf /home/ZLMediaKit/Release

# donl
git clone --depth 1 https://gitee.com/xia-chu/ZLMediaKit
cd ZLMediaKit
git submodule update --init

mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE:STRING=Release
make -j4

mkdir -p /home/ZLMediaKit/Release
mv /home/zlm/ZLMediaKit/release/linux/Release/* /home/ZLMediaKit/Release
cp /home/zlm/ZLMediaKit/conf/config.ini /home/ZLMediaKit/Release

