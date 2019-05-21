# WARNING
# You need to have install git
# giving permissions with "chmod +x tools.sh"

# Main dependencies
sudo apt install apt-transport-https curl ca-certificates software-properties-common build-essential libssl-dev nmap python3 python3-pip tor qbittorrent gparted skypeforlinux k3d -y

# Python tools
sudo apt install python3-tk
pip3 install setuptools

# Installing vscode
sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code -y

# Installing vscode extensions.
## Bracket Pair Colorizar
code --install-extension CoenraadS.bracket-pair-colorizer
## Docker
code --install-extension PeterJausovec.vscode-docker
## Editorconfig
code --install-extension EditorConfig.EditorConfig
## Eslint
code --install-extension dbaeumer.vscode-eslint
## GitLens
code --install-extension eamodio.gitlens
## GraphQL for vscode
code --install-extension kumar-harsh.graphql-for-vscode
## Prettier - Code formatter
code --install-extension esbenp.prettier-vscode
## Python
code --install-extension ms-python.python
## TSLint
code --install-extension eg2.tslint
## VSCode-icons
code --install-extension vscode-icons-team.vscode-icons

# Adding favorite config for vscode
cp settings.json ~/.config/Code/User/settings.json

# Installing databases
sudo apt update
sudo apt install mysql-server postgresql postgresql-contrib redis-server

# Installing docker
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

if [ "$(. /etc/os-release; echo $NAME)" = "Linux Mint" ] || [ "$(. /etc/os-release; echo  $NAME)" = "elementary OS" ] ; then
  # Linux mint 19 version or elementary os version
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
elif [ "$(. /etc/os-release; echo $NAME)" = "Ubuntu" ]; then
  # Ubuntu versions
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
else
  echo "The current system is not compatible!!"
  break
fi

sudo apt update
sudo apt install docker-ce -y

# Installing Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Installing nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Installing yarn
sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt instal

# Installing spotify
sudo chmod +x spotify.sh
sudo ./spotify.sh

# Installing favorite npm packages.
sudo chown -R $USER:$(id -gn $USER) ~/.config
sudo npm i -g eslint tslint typescript npx

## React-native modules
sudo apt install openjdk-8-jdk openjdk-8-jre -y
sudo apt update
sudo apt install libtool m4 automake pkg-config libssl-dev adb python python3 python-dev python3-dev gcc g++ make -y

git clone https://github.com/facebook/watchman.git
cd watchman
git checkout v4.9.0  # the latest stable release
sudo ./autogen.sh
sudo ./configure
sudo make
sudo make install

sudo apt clean \
&& sudo apt autoclean \
&& reboot
