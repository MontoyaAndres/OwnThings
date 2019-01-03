# WARNING
# You need to have install git
# giving permissions with "chmod +x themes.sh"
# and run it with sudo

# Knowing what distribution is using now.
dist = `grep DISTRIB_ID /etc/*-release | awk -F '=' '{print $2}'`

# Basic config.
if [ "$dist" == "Ubuntu" ]; then
  sudo apt install gnome-shell -y
  sudo apt update -y
  sudo apt install gnome-tweak-tool unity-tweak-tool gnome-shell-extensions -y
fi

# Theme preferred.
sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf -y
git clone https://github.com/vinceliuice/vimix-gtk-themes.git
chmod +x vimix-gtk-themes/Install
./vimix-gtk-themes/Install

# Icons preferred.
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt-get update
sudo apt-get install flat-remix -y

# Cursor preferred.
tar xvjf OSX-ElCap.tar.bz2
chmod +x OSX-ElCap/install.sh
./OSX-ElCap/install.sh

# Install zsh.
sudo apt install zsh git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
sleep 10
chsh -s `which zsh`
git clone https://github.com/ergenekonyigit/lambda-gitster.git
cp lambda-gitster/lambda-gitster.zsh-theme ~/.oh-my-zsh/custom/themes
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="lambda-gitster"/g' ~/.zshrc
sleep 10
sudo shutdown -r 0
