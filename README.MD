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

### Resources

- [Boot USB](https://www.linuxadictos.com/17778.html)
- [Shellcode to powershell](https://www.trustedsec.com/2013/05/native-powershell-x86-shellcode-injection-on-64-bit-platforms/)

### Tips

Generate SSH and add it to my system.

```
cd ~
ssh-keygen -t rsa -b 4096 -C "andresmontoyafcb@gmail.com"
ssh-add ~/.ssh/id_rsa
```
