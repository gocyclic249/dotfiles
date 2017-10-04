#!/bin/bash

sudo pacman -S emacs zsh stow


rm -rf ~/.emacs.d
rm -rf ~/.emacs

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

mkdir ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t rsa -b 4096

cd ~/

git clone https://github.com/powerline/fonts.git

sh ~/fonts/install.sh
