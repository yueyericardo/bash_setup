#!/bin/bash

cp .bash_aliases ~/
cp .inputrc ~/

if [ -f ~/.bashrc ]; then
    echo 'Backup current ~/.bashrc to ~/.bashrc.bak'
    cp ~/.bashrc ~/.bashrc.bak
fi

if [ -f ~/.profile ]; then
    echo 'Backup current ~/.profile to ~/.profile.bak'
    cp ~/.profile ~/.profile.bak
fi

cp .bashrc_minimal ~/.bashrc
cp .profile_minimal ~/.profile

source ~/.bashrc
cd ~

echo
echo Tips: Feel free to edit ~/.bash_aliases to add more aliases
