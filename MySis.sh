#!/bin/bash
echo "updating system"
apt-get update
apt-get --assume-yes upgrade

echo "installing python and packages"
apt-get --assume-yes install python
pip install sciPy
pip install numPy
pip install Pandas
pip install openpyxl
pip install matplotlib
pip install pillow
pip install requests

echo "installing sublime"
apt-get --assume-yes install subl3
