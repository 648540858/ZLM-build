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
echo "$(cd $(dirname $0); pwd)"
docker run -it -v "$workdir"/build/:/home/ZLMediaKit -v "$workdir"/script/:/home/script zlm:"$1" /home/script/run"$2".sh

mv Release "$realPath"

if [[ $2 == rtc ]]; then
	echo -e "cp ../script/installForRtc.sh $realPath/install.sh"
        cp ../script/installForRtc.sh "$realPath"/install.sh
        chmod +x "$realPath"/install.sh
    fi


