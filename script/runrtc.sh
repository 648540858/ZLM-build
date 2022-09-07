#!/bin/bash  

mkdir -p /home/zlm && cd /home/zlm
rm -rf /home/ZLMediaKit/Release

wget https://www.openssl.org/source/openssl-1.1.1k.tar.gz --no-check-certificate 
tar -xvzf openssl-1.1.1k.tar.gz 
cd openssl-1.1.1k  
./config shared --openssldir=/usr/local/openssl --prefix=/usr/local/openssl  
make -j4 
make install  
cd ../  
wget https://codeload.github.com/cisco/libsrtp/tar.gz/refs/tags/v2.4.2  
tar -xvzf v2.4.2  
cd libsrtp-2.4.2/  
mkdir -p /root/srtp 
./configure --prefix=/root/srtp --enable-openssl --with-openssl-dir=/usr/local/openssl  
make -j4  
make install  
cp -r  /root/srtp/include/ /usr/local/include/  
cp -r  /root/srtp/lib/ /usr/local/lib  
 

mkdir -p /home/zlm && cd /home/zlm
rm -rf /home/ZLMediaKit/Release

# donl
git clone --depth 1 https://gitee.com/xia-chu/ZLMediaKit
cd ZLMediaKit
git submodule update --init

mkdir build && cd build
cmake .. -DENABLE_WEBRTC=true  -DOPENSSL_ROOT_DIR=/usr/local/openssl  -DOPENSSL_LIBRARIES=/usr/local/openssl/lib -DCMAKE_BUILD_TYPE:STRING=Release
cmake --build . --target MediaServer -- -j4

mkdir -p /home/ZLMediaKit/Release
mv /home/zlm/ZLMediaKit/release/linux/Release/* /home/ZLMediaKit/Release/
cp /home/zlm/ZLMediaKit/conf/config.ini /home/ZLMediaKit/Release/
mkdir -p /home/ZLMediaKit/Release/ZLMediaKitLib
cp -r  /root/srtp /home/ZLMediaKit/Release/ZLMediaKitLib
cp -r  /usr/local/openssl /home/ZLMediaKit/Release/ZLMediaKitLib
