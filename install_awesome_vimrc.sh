#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully!"

echo "Installing plugins..."
git submodule update --init --recursive

echo "Installing YouCompleteMe Clang completion"
cd ~/.vim_runtime/sources_non_forked/YouCompleteMe
python3 install.py --clang-completer

echo "Finished. Jeehaw!"
