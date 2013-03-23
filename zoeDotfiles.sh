#!/bin/bash
#vimrc/bashrc setup
sudo apt-get install vim vim-gtk rake exuberant-ctags mercurial -y
cd ~/
git clone https://github.com/Zoe-McCarthy/dotfiles.git -y
~/dotfiles/install.sh
