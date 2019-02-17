# WARNING
# You need to have installed git to download it.
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

sleep 30

# Installing Linuxbrew

sudo apt install build-essential curl file git

export PATH=/home/linuxbrew/.linuxbrew/Homebrew/Library/Homebrew/vendor/portable-ruby/current/bin:$PATH

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"

# Installing Linuxbrew tools

brew install docker docker-compose nmap node yarn python pipenv mysql postgresql redis mongodb

# Installing some basic tools
sudo apt update
sudo apt install tor qbittorrent gparted skypeforlinux k3d -y

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
