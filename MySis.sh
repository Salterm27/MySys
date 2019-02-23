#!/bin/bash
#Python enviroment
if ! [ -x "$(command -v python3)" ]; then
  echo 'Python3 is not installed.' >&2
  sudo apt-get --assume-yes install python3.6
  sudo apt install --assume-yes python-pip
  pip install setuptools
  pip install sciPy
  pip install numPy
  pip install Pandas
  pip install openpyxl
  pip install matplotlib
  pip install pillow
  pip install requests
else 
  echo 'python3 is already installed'
fi

#Sublime text
if ! [ -x "$(command -v subl)" ]; then
  echo 'subl is not installed.' >&2
  echo "installing sublime"
  sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  sudo apt-get --assume-yes install apt-transport-https
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  sudo apt-get --assume-yes update
  sudo apt-get --assume-yes install sublime-text
else 
  echo 'sublime is already installed'
fi

#VS Code
if ! [ -x "$(command -v code)" ]; then
  echo 'VS Code is not installed.' >&2
  echo "installing VS code"
  sudo apt update
  sudo apt install software-properties-common apt-transport-https wget
  wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
  sudo apt install code
else 
  echo 'VS Code is already installed'
fi

#Compilers and utilities
echo "installing compilers"
sudo  apt-get --assume-yes install gcc
sudo  apt-get --assume-yes install g++
sudo  apt-get --assume-yes install arduino




