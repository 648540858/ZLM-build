#!/bin/bash  

if [[ $EUID -ne 0 ]]; then
        echo "请使用root用户执行" 1>&2
        exit 1
    fi

cp -rf ZLMediaKitLib/openssl /usr/local/openssl

cp -rf  ZLMediaKitLib/srtp/include/ /usr/local/include/  
cp -rf  ZLMediaKitLib/srtp/lib/ /usr/local/lib