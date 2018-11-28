sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt install gcc build-essential git automake yasm libgmp-dev libpcap-dev pkg-config libssl-dev libevent-dev libncurses5-dev libbz2-dev zlib1g-dev nvidia-opencl-dev libopenmpi-dev openmpi-bin -y


# get driver
wget http://us.download.nvidia.com/tesla/396.44/NVIDIA-Linux-x86_64-396.44.run
# install driver
sudo /bin/bash NVIDIA-Linux-x86_64-396.44.run



# get crackstation
echo "This may take a while..."
wget https://crackstation.net/files/crackstation.txt.gz


# unzip, this is 15Gb so make sure theres enough space on disk
gunzip crackstation.txt.gz crackstation.txt

# filter crackstation
egrep -a "^[[:alnum:]]{5,8}$" crackstation.txt > layer9.txt


fspec=layer9.txt
num_files=4

# Work out lines per file.

total_lines=$(wc -l <${fspec})
((lines_per_file = (total_lines + num_files - 1) / num_files))

# Split the actual file, maintaining lines.

split --lines=${lines_per_file} ${fspec} xyzzy.

# Debug information

echo "Total lines     = ${total_lines}"
echo "Lines  per file = ${lines_per_file}"    
wc -l xyzzy.*


mkdir -p ~/JohnTheRipper
cd ~/JohnTheRipper
git clone git://github.com/magnumripper/JohnTheRipper -b bleeding-jumbo john
cd ~/JohnTheRipper/john/src
./configure --enable-mpi && make -s clean && make -sj4



sudo reboot