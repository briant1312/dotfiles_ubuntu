#! /bin/bash

sudo apt update

# install globally used packages
sudo apt install ninja-build gettext curl unzip build-essential make cmake nodejs feh compton brightnessctl xclip rofi fonts-font-awesome -y

# install packages used by the bumblee-status bar
pip3 install psutil netifaces pulsectl
sudo apt install gnome-system-monitor python3-tk iw -y

# install neovim
mkdir ~/neovim && cd ~/neovim
git clone https://github.com/neovim/neovim
cd ~/neovim/neovim
make CMAKE_BUILD_TYPE=Release
sudo make install

# remove automatically made files/directories for files in this directory
rm -rf ~/.config/i3
rm -rf ~/.config/nvim
rm ~/.bashrc
rm -rf ~/.local/share/fonts
rm -rf ~/.config/rofi
rm -rf ~/.config/bumblebee-status

# add symbolic links for files in this directory
ln -sf ~/.dotfiles/i3 ~/.config/i3
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/bashrc ~/.bashrc
ln -sf ~/.dotfiles/fonts ~/.local/share/fonts
ln -sf ~/.dotfiles/rofi ~/.config/rofi
ln -sf ~/.dotfiles/bumblebee-status ~/.config/bumblebee-status
