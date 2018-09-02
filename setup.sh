#!/bin/sh
#安装华丽丽的vim；
LOCFILE=/var/tmp/vim.lock
if [ -f ${LOCFILE} ];then
    echo "Already exist. Exit"
    echo ""
    exit 0
fi

#scp -r work@cq01-fanshuang.epc.baidu.com:$HOME/myvim/  $HOME/
vim=$HOME'/.vim'
vimrc=$HOME'/.vimrc'
if [ -d $vim ];then 
    mv $vim $HOME/.vim.bak
fi
if [ -f $vimrc ];then
    mv $vimrc $HOME/.vimrc.bak
fi
ln -s $HOME/Env/myvim/  $vim
ln -s $HOME/Env/myvim/.vimrc  $vimrc
touch /var/tmp//vim.lock
echo "Done"

