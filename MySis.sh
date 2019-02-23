#!/bin/bash

echo "installing python and packages"
sudo apt-get --assume-yes install python3.6
sudo apt install --assume-yes python-pip
pip install sciPy
pip install numPy
pip install Pandas
pip install openpyxl
pip install matplotlib
pip install pillow
pip install requests

echo "installing sublime"
sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get --assume-yes install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get --assume-yes update
sudo apt-get --assume-yes install sublime-text
