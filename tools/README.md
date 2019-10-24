# Docker stuff

## Bettercap

```shell
sudo docker pull bettercap/bettercap

sudo docker run -it --privileged --net=host bettercap/bettercap -h
```

## Empire

```shell
sudo docker pull empireproject/empire

sudo docker run -it --privileged --net=host empireproject/empire bash
```
## Kali Linux

```shell
sudo docker pull kalilinux/kali-linux-docker

sudo docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro --privileged --net=host --name kali-linux kalilinux/kali-linux-docker bash

# Then, run this command:

apt update && apt install kali-linux kali-linux-web kali-linux-pwtools kali-linux-wireless kali-linux-top10
```

# Errors

## Wifite dependencies

- [Tutorial](https://deshmukhsuraj.wordpress.com/2015/06/30/run-airmon-ng-from-vm-without-external-usb-wireless-card/). Run this command: `apt install hashcat hcxtools`, install [hcxpcaptool](https://github.com/ZerBea/hcxtools) and then install [pciutils](https://forums.kali.org/showthread.php?27721-airmon-ng-lspci#post_51104)

## GUI programs

- Execute `xhost +` in the main machine (the one that is runngin docker), and then all will work. [Information](https://www.linuxquestions.org/questions/solaris-opensolaris-20/can%27t-connect-to-x11-window-server-using-%27-10-0%27-as-the-value-of-the-display-variable-4175581149/#post5553853)
