# Main dependencies
sudo apt install vlc curl nmap qbittorrent gparted ssh -y
https://marcosmarti.org/como-eliminar-el-ruido-de-fondo-de-un-microfono-en-linux/

# Installing vscode
https://code.visualstudio.com/docs/setup/linux#_debian-and-ubuntu-based-distributions

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
## AWS Toolkit
code --install-extension amazonwebservices.aws-toolkit-vscode
## vscode-styled-components
code --install-extension jpoissonnier.vscode-styled-components

# Adding favorite config for vscode
cp settings.json ~/.config/Code/User/settings.json

# Installing databases
# sudo apt install postgresql postgresql-contrib redis-server mongodb-server

# Installing nodejs
https://github.com/nvm-sh/nvm#install--update-script
sudo apt install node-pre-gyp build-essential gcc g++ make
nvm install node
npm i tslint typescript yarn vercel serverless @aws-amplify/cli -g

# Extensions
https://extensions.gnome.org/extension/307/dash-to-dock/
https://extensions.gnome.org/extension/690/easyscreencast/
https://extensions.gnome.org/extension/1112/screenshot-tool/
https://extensions.gnome.org/extension/104/netspeed/
