#!/bin/bash
read -t10 -n1 -r -p "!!! Attention the container will be LOST !!! Press any key to continue..." key

if [ "$?" -eq "0" ]; then
   docker rm geppetto-ide
   docker run --name "geppetto-ide" -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix funthomas424242/puppet-geppetto-ide.docker
else
    echo 'No key was pressed.'
fi

