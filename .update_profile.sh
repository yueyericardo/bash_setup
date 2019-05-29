#!/bin/bash

if [ -f ~/.profile ]; then
    cp ~/.profile ~/.profile.bak
fi

cp ~/.profile_minimal ~/.profile
