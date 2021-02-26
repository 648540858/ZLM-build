#!/bin/bash  
workdir=$(cd $(dirname $0); pwd) 

docker run -it -v $workdir/build/:/home/ZLMediaKit zlm:$1 /home/ZLMediaKit/run.sh