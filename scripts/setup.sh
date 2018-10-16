sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install gcc build-essential git automake yasm libgmp-dev libpcap-dev pkg-config libssl-dev libevent-dev libncurses5-dev libbz2-dev zlib1g-dev nvidia-opencl-dev libopenmpi-dev openmpi-bin -y

#hashcat setup
git clone https://github.com/hashcat/hashcat.git
cd ./hashcat
git submodule update --init
make 
sudo make install
cd ~/

# tmux setup
rm -fr /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
sudo make install
cd ~/
rm -fr /tmp/tmux

sudo reboot

# get driver
wget http://us.download.nvidia.com/tesla/396.44/NVIDIA-Linux-x86_64-396.44.run
# install driver
sudo /bin/bash NVIDIA-Linux-x86_64-396.44.run

hashcat -I
sudo reboot
