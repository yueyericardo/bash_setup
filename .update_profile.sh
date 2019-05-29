#!/bin/bash

if [ -f ~/.profile ]; then
    cp ~/.profile ~/.profile.bak
fi

cp ~/.profile_minimal ~/.profile

if [ -f ~/.bash_profile ]; then
    cp ~/.bash_profile ~/.bash_profile.bak
fi

cp ~/.profile_minimal ~/.bash_profile
