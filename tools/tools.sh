# Main dependencies
sudo apt install vlc curl nmap qbittorrent gparted ssh -y

# Installing vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install apt-transport-https
sudo apt update
sudo apt install code

# Installing vscode extensions.
## Bracket Pair Colorizar
code --install-extension CoenraadS.bracket-pair-colorizer
## GitLens
code --install-extension eamodio.gitlens
## Prettier - Code formatter
code --install-extension esbenp.prettier-vscode
## TSLint
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
## VSCode-icons
code --install-extension vscode-icons-team.vscode-icons

# Adding favorite config for vscode
cp settings.json ~/.config/Code/User/settings.json

# Installing databases
# sudo apt install postgresql postgresql-contrib redis-server mongodb-server

# Installing nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
sudo apt install node-pre-gyp build-essential gcc g++ make
nvm install node
npm i tslint typescript yarn -g --unsafe-perm
