#!/bin/bash
cp ~/.bashrc ~/.bashrc.bak

if test -f "~/.profile"; then
    cp ~/.profile ~/.profile.bak
fi

cp .bashrc_minimal .bashrc
cp .profile_minimal .profile

source ~/.bashrc
