#!/bin/bash
echo "updating system"
apt-get update
apt-get upgrade
echo "installing python and packages"
apt-get install python
pip install sciPy
pip install numPy
pip install Pandas
pip install openpyxl
pip install matplotlib
pip install pillow
pip install requests

echo "installing sublime"
apt-get install subl3
