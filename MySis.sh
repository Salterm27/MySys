#!/bin/bash

echo "installing python and packages"
apt-get --assume-yes install python3.6
sudo apt install python-pip
pip install sciPy
pip install numPy
pip install Pandas
pip install openpyxl
pip install matplotlib
pip install pillow
pip install requests

echo "installing sublime"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get --assume-yes install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get --assume-yes update
apt-get --assume-yes install sublime-text
