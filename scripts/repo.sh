#!/bin/bash

# bash script to execute while on AWS instance




# git clone my repo to get access to files
mkdir ~/github
cd ~/github

git clone https://github.com/SCarmo/Scalable-Computing.git

cd ~/github/Scalable-Computing

# Now to get rockyou.txt & drivers
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt



# Time to crack some hashes baby