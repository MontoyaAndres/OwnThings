# WARNING
# You need to have installed git to download it
# giving permissions with "chmod +x themes.sh"

# Dependencies for Ubuntu with gnome.
if [ "$(. /etc/os-release; echo $NAME)" = "Ubuntu" ]; then
  sudo apt install gnome-shell -y
  sudo apt update -y
  sudo apt install gnome-tweak-tool unity-tweak-tool gnome-shell-extensions -y

  # Theme preferred.
  sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf -y
  git clone https://github.com/vinceliuice/vimix-gtk-themes.git
  sudo chmod +x vimix-gtk-themes/Install
  sudo ./vimix-gtk-themes/Install
fi

# Dependencies for Linux mint with cinnamon.
if [ "$(. /etc/os-release; echo $NAME)" = "Linux Mint" ]; then
  git clone https://github.com/paullinuxthemer/McOS-Mint-Cinnamon-Edition.git
  sudo mv McOS-Mint-Cinnamon-Edition ~/.themes
fi

# Icons preferred.
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt-get update
sudo apt-get install flat-remix -y

# Cursor preferred.
tar xvjf OSX-ElCap.tar.bz2
sudo chmod +x OSX-ElCap/install.sh
sudo ./OSX-ElCap/install.sh

# Install zsh.
sudo apt install zsh git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
sleep 10
git clone https://github.com/ergenekonyigit/lambda-gitster.git \
&& cp lambda-gitster/lambda-gitster.zsh-theme ~/.oh-my-zsh/custom/themes \
&& sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="lambda-gitster"/g' ~/.zshrc
sleep 10
chsh -s `which zsh`
sudo shutdown -r 0
