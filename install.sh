sudo apt-get update
sudo apt-get -y install python python-pip python3 python3-pip

sudo apt-get -y remove vim-tiny
sudo apt-get update
sudo apt-get -y install vim

sudo apt-get -y install git
sudo apt-get -y upgrade git
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt-get -y install build-essential cmake
sudo apt-get -y install python-dev python3-dev

sudo apt-get -y install man
sudo apt-get -y install curl

curl -O https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

