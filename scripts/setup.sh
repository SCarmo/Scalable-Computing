sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install gcc build-essential git automake yasm libgmp-dev libpcap-dev pkg-config libssl-dev libevent-dev libncurses5-dev libbz2-dev zlib1g-dev nvidia-opencl-dev libopenmpi-dev openmpi-bin -y

git clone https://github.com/hashcat/hashcat.git
cd ./hashcat
git submodule update --init
make 
sudo make install
cd ..

rm -fr /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
sudo make install
cd -
rm -fr /tmp/tmux

sudo reboot

mkdir -p ~/JohnTheRipper
cd ~/JohnTheRipper
git clone git://github.com/magnumripper/JohnTheRipper -b bleeding-jumbo john
cd ~/JohnTheRipper/john/src
./configure --enable-mpi && make -s clean && make -sj4
../run/john --test

sudo reboot
