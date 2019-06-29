# OWNER SETTINGS

### Automatic

I've created a bash script for automazing the process to install the typical tools I use.

> Git needs to be installed `sudo apt install git`

```
git config --global user.email "andresmontoyafcb@gmail.com"
git config --global user.name "MontoyaAndres"
git config --global color.ui true
```

Go to the **tools** forder and execute the script `tools`:

```
chmod +x tools.sh
./tools.sh
```

Then, you need to clean the system, try executing the script `clean`:

```
chmod +x clean.sh
./clean.sh
```

### Other tools

- Netsparker (Pay)
- Burpsuite (Pay)
    - [Burpsuite (Free)](https://mega.nz/#!LsAn3Y7Q!7XIx2z-4Iy20yCnx3-5n46HTgRA5Jx7R-GJFxiVKeKg)
    - [Java 10 to 8](https://support.portswigger.net/customer/portal/questions/17360581-burp-suite-won-t-start-at-all-with-java-1-)
- Nessus (Pay)
- [React-native-cli](https://github.com/MontoyaAndres/react-native-first-app)
- [Shadowbroker](https://github.com/misterch0c/shadowbroker)

### Resources

- [Boot USB](https://www.linuxadictos.com/17778.html)
- Windows 8.1 virtualbox `967N4-R7KXM-CJKJB-BHGCW-CPKT7`
- [Shellcode to powershell](https://www.trustedsec.com/2013/05/native-powershell-x86-shellcode-injection-on-64-bit-platforms/)

### Tips

Generate SSH and add it to my system.

```
cd ~
ssh-keygen -t rsa -b 4096 -C "andresmontoyafcb@gmail.com"
ssh-add ~/.ssh/id_rsa
```
