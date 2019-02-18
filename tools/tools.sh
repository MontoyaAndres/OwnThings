# WARNING
# You need to have install git
# giving permissions with "chmod +x tools.sh"

# Installing vscode
sudo apt install curl -y
sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https -y
sudo apt update
sudo apt install code -y

sleep 10

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
code --install-extension robertohuertasm.vscode-icons

# Adding favorite config for vscode
cp settings.json ~/.config/Code/User/settings.json

sleep 20

# Installing Docker
sudo apt update
sudo apt install apt-transport-https ca-certificates software-properties-common -y

sleep 10

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sleep 10

if [ "$(. /etc/os-release; echo $NAME)" = "Linux Mint" ]; then
  # Linux mint 19 version
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

# Installing nodejs
sudo curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt install -y nodejs

# Installing yarn
sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn -y

# Installing some awesome tools
sudo apt update
sudo apt install nmap python3 python3-pip tor qbittorrent gparted skypeforlinux k3d -y

# Installing spotify
sudo chmod +x spotify.sh
sudo ./spotify.sh

# Installing favorite npm packages.
sudo npm config set unsafe-perm true
sudo chown -R $USER:$(id -gn $USER) ~/.config
sudo npm i -g create-react-app eslint now prisma tslint typescript

## React-native
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

sleep 30

sudo npm i -g create-react-native-app

sudo apt clean \
&& sudo apt autoclean \
&& reboot
