#!/bin/bash

echo
cp .inputrc ~/

if [ -f ~/.bash_aliases ]; then
    echo 'Backed up: ~/.bash_aliases =======> ~/.bash_aliases.bak'
    cp ~/.bash_aliases ~/.bash_aliases.bak
fi

if [ -f ~/.bashrc ]; then
    echo 'Backed up: ~/.bashrc =======> ~/.bashrc.bak'
    cp ~/.bashrc ~/.bashrc.bak
fi

if [ -f ~/.profile ]; then
    echo 'Backed up: ~/.profile =======> ~/.profile.bak'
    cp ~/.profile ~/.profile.bak
fi

if [ -f ~/.bash_prompt ]; then
    echo 'Backed up: ~/.bash_prompt =======> ~/.bash_prompt.bak'
    cp ~/.bash_prompt ~/.bash_prompt.bak
fi

cp .bash_aliases ~/.bash_aliases
cp .bashrc_minimal ~/.bashrc
cp .profile_minimal ~/.profile
cp .bash_prompt ~/.bash_prompt

source ~/.bashrc

echo Feel free to edit ~/.bash_aliases to add more aliases
echo
