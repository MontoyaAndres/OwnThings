# OWNER SETTINGS

### Automatic

I've created some bash script to automazing the process to install the typical tools I use.

> Git needs to be installed `sudo apt install git`

```
git config --global user.email "andresmontoyafcb@gmail.com"
git config --global user.name "MontoyaAndres"
git config --global color.ui true
```

Go to the **theme** forder. Script for tools.

```
chmod +x themes.sh
./themes.sh
```

Go to the **tools** forder. Script for tools.

```
chmod +x tools.sh
./tools.sh
```

Go to the **hacking** forder. Script for hacking tools, you need to have `Docker` and `git` installed

```
chmod +x install.sh
./install.sh
```

### Other tools

- Netsparker (Pay)
- Burpsuite (Pay)
    - [Burpsuite (Free)](https://mega.nz/#!LsAn3Y7Q!7XIx2z-4Iy20yCnx3-5n46HTgRA5Jx7R-GJFxiVKeKg)
    - [Java 10 to 8](https://support.portswigger.net/customer/portal/questions/17360581-burp-suite-won-t-start-at-all-with-java-1-)
- Nessus (Pay)
- [React-native-cli](https://github.com/MontoyaAndres/react-native-first-app)
- [Shadowbroker](https://github.com/misterch0c/shadowbroker)

### Some stuff

- [Boot USB](https://www.linuxadictos.com/17778.html)
- Windows 8.1 virtualbox `967N4-R7KXM-CJKJB-BHGCW-CPKT7`
- [Wifi slow](https://www.adslzone.net/foro/linux.26/solucionado-problema-wifi-muy-lento-ubuntu.193481/), [also](https://forums.linuxmint.com/viewtopic.php?t=47766#p275702)

### Tips

Generate SSH and add it to my system.

```
cd ~
ssh-keygen -t rsa -b 4096 -C "andresmontoyafcb@gmail.com"
ssh-add ~/.ssh/id_rsa
```
