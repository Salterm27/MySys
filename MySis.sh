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

#Compilers and utilities
echo "installing compilers"

if ! [ -x "$(command -v gcc)" ]; then
  echo 'gcc is not installed.' >&2
  echo "installing gcc"
  sudo  apt-get --assume-yes install gcc
else 
  echo 'git is already installed'
fi

#g++
if ! [ -x "$(command -v g++)" ]; then
  echo 'g++ is not installed.' >&2
  echo "installing g++"
  sudo  apt-get --assume-yes install g++
else 
  echo 'g++ is already installed'
fi

#Arduino
if ! [ -x "$(command -v arduino)" ]; then
  echo 'Arduino is not installed.' >&2
  echo "installing Arduino"
  sudo  apt-get --assume-yes install arduino
else 
  echo 'arduino is already installed'
fi

if ! [ -x "$(command -v subl)" ]; then
  echo 'git is not installed.' >&2
  echo "installing git"
  sudo apt-get --assume-yes install git
else 
  echo 'git is already installed'
fi

if ! [ -x "$(command -v spotify-client)" ]; then
  echo 'Spotify is not installed.' >&2
  echo "installing Spotify"
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
  echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt-get update
  sudo apt-get --assume-yes install spotify-client
else 
  echo 'Spotify is already installed'
fi
