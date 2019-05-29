#!/bin/bash

mv * ~/

if test -f "~/.bashrc"; then
    cp ~/.bashrc ~/.bashrc.bak
fi

if test -f "~/.profile"; then
    cp ~/.profile ~/.profile.bak
fi

cp .bashrc_minimal .bashrc
cp .profile_minimal .profile

source ~/.bashrc
