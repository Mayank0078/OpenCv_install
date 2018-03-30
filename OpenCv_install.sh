#!/bin/bash

sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

mkdir ~/OpenCv && cd ~/OpenCv
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

#-DOPENCV_EXTRA_MODULES_PATH=<opencv_contrib>/modules <opencv_source_directory>


cd opencv
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local .. -DOPENCV_EXTRA_MODULES_PATH=~/OpenCv/opencv_contrib/modules ~/OpenCv/opencv

make -j7
sudo make install
