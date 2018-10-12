#!/bin/bash

# bash script to execute while on AWS instance

# run:
# sudo /bin/bash NVIDIA-Linux-x86_64-396.44.run
#to setup gpu


#hashcat set-up
cd ~/
sudo apt update
sudo apt install cmake build-essential
sudo apt install checkinstall git
sudo apt remove hashcat
sudo apt build-dep hashcat
sudo rm -rf hashcat
git clone https://github.com/hashcat/hashcat.git
cd hashcat
git submodule update --init
sudo make
sudo checkinstall
hashcat --version
cd ~/

# Now to get rockyou.txt & drivers
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

# git clone my repo to get access to files

git clone https://github.com/SCarmo/Scalable-Computing.git