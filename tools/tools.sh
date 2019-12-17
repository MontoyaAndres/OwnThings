# Main dependencies
sudo apt install vlc curl nmap python3 python3-pip python3-venv tor qbittorrent gparted ssh -y

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
# sudo apt update
# sudo apt install postgresql postgresql-contrib redis-server mongodb-server

# Installing docker
# sudo apt install ca-certificates gnupg2 software-properties-common
# curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
# sudo apt-key fingerprint 0EBFCD88
# sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian buster stable"
# sudo apt update
# sudo apt-get install docker-ce docker-ce-cli containerd.io

# Installing nodejs
curl -sL https://deb.nodesource.com/setup_12.x | bash -
apt install -y nodejs
npm i eslint tslint typescript npx yarn now -g --unsafe-perm
