sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install gcc build-essential git automake yasm libgmp-dev libpcap-dev pkg-config libssl-dev libevent-dev libncurses5-dev libbz2-dev zlib1g-dev nvidia-opencl-dev libopenmpi-dev openmpi-bin -y


# tmux setup
rm -fr /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
sudo make install
cd ~/
rm -fr /tmp/tmux


# get driver
wget http://us.download.nvidia.com/tesla/396.44/NVIDIA-Linux-x86_64-396.44.run
# install driver
sudo /bin/bash NVIDIA-Linux-x86_64-396.44.run

# get crackstation
echo "This may take a while..."
wget https://crackstation.net/files/crackstation.txt.gz

# filter crackstation
egrep -a "^[[:alnum:]]{5,8}$" crackstation.txt > layer9.txt

# unzip
gunzip crackstation.txt.gz crackstation.txt
mkdir -p ~/JohnTheRipper
cd ~/JohnTheRipper
git clone git://github.com/magnumripper/JohnTheRipper -b bleeding-jumbo john
cd ~/JohnTheRipper/john/src
./configure --enable-mpi && make -s clean && make -sj4



sudo reboot