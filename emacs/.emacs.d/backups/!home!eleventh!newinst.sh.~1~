#!/bin/bash

sudo apt-get update && sudo apt-get upgrade 

sudo apt-get install emacs tmux zsh pandoc stow

chsh -s /bin/zsh

rm -rf ~/.emacs.d
rm -rf ~/.emacs


curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > neo.sh

sh ./neo.sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm -rf ~/.zshrc

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tmp 

cd ~/dotfiles

stow vim
stow spacemacs
stow zsh
stow Xresources

mkdir ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t rsa -b 4096

cd ~/

git clone https://github.com/powerline/fonts.git

sh ~/fonts/install.sh
