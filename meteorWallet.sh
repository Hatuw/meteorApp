#=========================
# Author: Hatuw
# Copyright:Mathematics and Information Science,GZU Sep,2016
# email:395460642@qq.com
#=========================
# this shell is used to initialize a ethereum wallet base on meteor
# only test in ubuntu14.04LTS
# To run this shell, first make sure you have permission.\
#	or you can run this shell by using 'sudo sh ./meteorWallet.sh'
# Also, it may take some time. If you have problems, you can send a email for me ,tks~
#=========================
# Require:
#	meteor
#=========================

#install go
echo install go1.7.1.linux-amd64.tar.gz ...
cd ~/Downloads
#wget https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.7.1.linux-amd64.tar.gz
#set PATH
echo set the GOPATH...
username=$(cat /etc/hostname)
echo export GOPATH=/home/$username/godev:/home/$username/eclipsegodev > /etc/profile.d/golang_profile.sh
echo export GOROOT=/usr/local/go >> /etc/profile.d/golang_profile.sh
echo export PATH=\$GOROOT/bin:\$PATH >> /etc/profile.d/golang_profile.sh


# install go-ethereum
echo install go-ethereum...
apt-get install software-properties-common
add-apt-repository -y ppa:ethereum/ethereum
add-apt-repository -y ppa:ethereum/ethereum-dev
apt-get update
apt-get install ethereum
# clone go-ethereum
cd ~/
echo clone go-ethereum from https://github.com/ethereum/go-ethereum 
git clone https://github.com/ethereum/go-ethereum
sudo apt-get install -y build-essential libgmp3-dev golang
#build geth
echo build it ...
cd go-ethereum
make geth
