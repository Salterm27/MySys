APT = "sudo apt-get"
PIP = "sudo pip install" 



#updates the current system
echo "$($APT) update"
sudo "$($APT) upgrade"

echo "$($APT) install python"
echo "$($PIP) sciPy"
echo "$($PIP) numPy"
echo "$($PIP) Pandas"
echo "$($PIP) openpyxl"
echo "$($PIP) matplotlib"
echo "$($PIP) pillow"
echo "$($PIP) requests"
