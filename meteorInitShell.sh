#========================
# Author:Hatuw
# Copyright:Mathematics and Information Science,GZU  Sep,2016
# email:395460642@qq.com
#========================
# this shell is used to initialize a meteor machine
# only test in ubuntu14.0.4LTS
# To run this shell, first make sure you have permission.\
#	or you can run this shell by using 'sudo sh ./meteorinitShell.sh'
# Also, it may take some time. If you have problems, you can send a email for me,tks~
#========================
# install tmux and some tools
apt-get update
apt-get install tmux -y
apt-get install vim -y
apt-get install git -y
apt-get install htop -y
cd ~/Documents
mkdir meteor && cd meteor
apt-get install curl
curl https://install.meteor.com/ | sh
apt-get upgrade -y

# after runing this shell, you can create a meteor project by:
#	meteor create <your project name>
#	cd <your project path>
#	meteor
