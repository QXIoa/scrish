sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

sudo apt-get -t jessie-backports install beignet beignet-dev

sudo updatedb
locate libOpenCL.so
sudo apt-get install opencl-headers ocl-icd-dev ocl-icd-libopencl1    
sudo apt-get install clinfo    
