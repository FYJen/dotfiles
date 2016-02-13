#!/bin/bash

echo "You should have Vim and git installed."

function symlink {
    curDir=${PWD}
    echo Setting up $1

    yes | rm -r ~/${2-$1} 2> /dev/null

    # src -> dest
    ln -s $curDir/$1 ~/${2-$1}
}

# Override .vimrc & .vim folder
symlink ".vim"
symlink ".vimrc"

# Link .gitconfig
symlink ".gitconfig"

# Link .zshrc
symlink ".zshrc"

# Temporarily disabled. Link bash_*
# symlink ".bash_profile"

# Using .bashrc as custom config on different machines
# if [ "$BASHRC" = "1" ]; then
#    symlink ".bashrc"
# fi

# Setup vundle
echo ""
echo "Setup Vundle"
echo "Run git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
echo "Run: vim +PluginInstall +qall"

# Setup zsh
echo "Install zsh and set it to your default shell"



