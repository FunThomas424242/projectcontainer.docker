#!/bin/sh
docker run --name "geppetto-ide" -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix funthomas424242/puppet-geppetto-ide.docker