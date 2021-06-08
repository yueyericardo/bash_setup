#!/bin/bash

CWD=$(pwd)
cd /tmp
rm -rf bash_setup
git clone https://github.com/yueyericardo/bash_setup >/dev/null 2>&1
cd bash_setup
source new_bash_setup.sh
cd $CWD