# testdocker
test of docker


$ docker build -t ubuntuguitest .
$ docker run --name guitest -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -it ubuntuguitest
