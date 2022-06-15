# OWNER SETTINGS

### General Operative System

I've created a bash script for automazing the process to install the typical tools I use.

> Git needs to be installed `sudo apt install git`

```
git config --global user.email "andresmontoyafcb@gmail.com"
git config --global user.name "MontoyaAndres"
git config --global color.ui true
git config --global core.editor "nano"
```

### Linux

Go to the **tools** forder and execute the script `tools`:

```
chmod +x tools.sh
./tools.sh
```

### Mac

https://stackoverflow.com/questions/65487249/getting-a-warning-when-installing-homebrew-on-macos-big-sur-m1-chip
https://tecadmin.net/install-nvm-macos-with-homebrew/
https://vscode-docs.readthedocs.io/en/stable/editor/setup/

How to boot win10 using a Mac: https://www.freecodecamp.org/espanol/news/crear-usb-de-arranque-window-10/

### Resources

- [Boot USB](https://www.linuxadictos.com/17778.html)
- [Shellcode to powershell](https://www.trustedsec.com/2013/05/native-powershell-x86-shellcode-injection-on-64-bit-platforms/)

### Tips

Generate SSH and add it to my system.

```
cd ~
ssh-keygen -t rsa -b 4096 -C "andresmontoyafcb@gmail.com"
eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa
```

### Extensions

- AWS Toolkit
- GitLens
- GraphQL
- IAM Legend
- Prettier - Code formatter
- Solidity
- TSLint
- Velocity
- vscode-icons
- vscode-styled-components
- YAML
