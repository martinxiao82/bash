#!/bin/bash

GREEN="\033[1;32m"

echo

echo -e "step 1: ${GREEN}pre-configuring packages${NOCOLOR}"

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install python3.7
alias python=python3.7

sudo apt install python3-pip
alias pip=pip3

echo -e "step 2: ${GREEN}installing robotframework${NOCOLOR}"

pip install robotframework

echo -e "step 3: ${GREEN}installing selenium${NOCOLOR}"

sudo apt install python3-selenium

echo -e "step 4: ${GREEN}version${NOCOLOR}"

python --version
pip --version
robot --version