# Main dependencies
sudo apt install vlc apt-transport-https curl ca-certificates software-properties-common build-essential libssl-dev nmap python3 python3-pip python3-venv tor qbittorrent gparted k3d ssh -y

# Installing vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code -y

# Installing vscode extensions.
## Bracket Pair Colorizar
code --install-extension CoenraadS.bracket-pair-colorizer
## Docker
code --install-extension ms-azuretools.vscode-docker
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
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
## VSCode-icons
code --install-extension vscode-icons-team.vscode-icons
## Svelte
code --install-extension jamesbirtles.svelte-vscode
## Styled-components
code --install-extension jpoissonnier.vscode-styled-components

# Adding favorite config for vscode
cp settings.json ~/.config/Code/User/settings.json

# Installing databases
sudo apt update
sudo apt install postgresql postgresql-contrib redis-server mongodb-server

# Installing docker
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
# Linux Mint 19.2 error: https://github.com/typora/typora-issues/issues/2065#issuecomment-526669791
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce -y

# Installing nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
sleep 10
nvm install 12
npm i eslint tslint typescript npx yarn now -g --unsafe-perm
