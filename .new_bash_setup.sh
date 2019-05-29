#!/bin/bash

rm -rf ~/.git
shopt -s dotglob
mv ./* ~/

if [ -f ~/.bashrc ]; then
    cp ~/.bashrc ~/.bashrc.bak
fi

if [ -f ~/.profile ]; then
    cp ~/.profile ~/.profile.bak
fi

cp ~/.bashrc_minimal ~/.bashrc
cp ~/.profile_minimal ~/.profile

source ~/.bashrc
cd ~
rm -rf bash_setup
