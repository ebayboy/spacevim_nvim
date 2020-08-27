# spacevim_nvim
spacevim_nvim

## vim8 install
# 卸载老的vim
yum remove vim -y

## install nvim
cp nvim /usr/bin/

## install clangd-7
yum install -y llvm-toolset-7.0-clang-tools-extra
echo "source /opt/rh/llvm-toolset-7.0/enable" >> ~/.bashrc
source ~/.bashrc

## SpaccVim install
curl -sLf https://spacevim.org/cn/install.sh | bash -s -- --install neovim

## open nvim:PlugInstall
