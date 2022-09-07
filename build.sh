#!/bin/bash  
workdir=$(cd $(dirname $0); pwd)

mkdir -p build

currentTime=$(date "+%Y%m%d")

realPath="zlm-release-$1-$currentTime"

if [[ $2 == rtc ]]; then
        realPath="zlm-release-rtc-$1-$currentTime"
    fi

cd build || exit
rm -rf "$realPath"

docker run -it -v "$workdir"/build/:/home/ZLMediaKit -v "$workdir"/script/:/home/script zlm:"$1" /home/script/run"$2".sh

mv Release "$realPath"

if [[ $2 == rtc ]]; then
        cp ../script/installForRtc.sh "$reallPath"/install.sh
        chmod +x "$reallPath"/install.sh
    fi


