# Dockerfile Kali image by Andrés Montoya.

sudo docker run -it -d -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro --privileged --net="host" --privileged --name kali-linux  kalilinux/kali-linux-docker bash
