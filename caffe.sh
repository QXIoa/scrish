sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# DEPENDENCIES
sudo apt-get install -y libopenblas-dev
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libprotobuf-dev protobuf-compiler
sudo apt-get install -y libgoogle-glog-dev
sudo apt-get install -y libgflags-dev
sudo apt-get install -y libhdf5-dev

# OPTIONAL DEPENDENCIES
# Install OpenCV (http://milq.github.io/install-opencv-ubuntu-debian).
sudo apt-get install -y liblmdb-dev
sudo apt-get install -y libleveldb-dev
sudo apt-get install -y libsnappy-dev

# INTERFACES (Python 3)
sudo apt-get install -y python3-dev python3-numpy libboost-python-dev
