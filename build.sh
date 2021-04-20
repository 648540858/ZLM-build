#!/bin/bash  
workdir=$(cd $(dirname $0); pwd) 

docker run -it -v $workdir/build/:/home/ZLMediaKit zlm:$1 /home/ZLMediaKit/run.sh

currentTime=`date "+%Y%m%d"`

mv build/Release build/zlm-release-$1-$currentTime