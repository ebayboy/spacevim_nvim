#!/bin/bash

# install vim8
yum remove vim-* -y
wget -P /etc/yum.repos.d/  https://copr.fedorainfracloud.org/coprs/lbiaggi/vim80-ligatures/repo/epel-7/lbiaggi-vim80-ligatures-epel-7.repo
yum  install vim-enhanced sudo -y

## install clangd-7
yum install -y llvm-toolset-7.0-clang-tools-extra
echo "source /opt/rh/llvm-toolset-7.0/enable" >> ~/.bashrc
source ~/.bashrc

## install nvim
cp ./nvim /usr/bin/

## SpaccVim install
#curl -sLf https://spacevim.org/cn/install.sh | bash -s -- --install neovim
tar -xvf .SpaceVim.tar.bz2 -C /root/

## nvim install Plugin
## nvim config : /root/.config/init.vim 
## :PlugInstall
