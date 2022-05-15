#!/bin/bash
# Add the option and execute the script to build OCV4.1.1 -D OPENCV_GENERATE_PKGCONFIG=YES with jetson nano. 
OPENCV_VERSION=4.1.1
ARCH_BIN=7.5
rm -rf ~/opencv_build
mkdir ~/opencv_build && cd ~/opencv_build
git clone --branch "$OPENCV_VERSION" https://github.com/opencv/opencv.git
git clone --branch "$OPENCV_VERSION" https://github.com/opencv/opencv_contrib.git
cd ~/opencv_build/opencv
sed -i 's/include <Eigen\/Core>/include <eigen3\/Eigen\/Core>/g' modules/core/include/opencv2/core/private.hpp
mkdir build && cd build
sudo apt install -y build-essential cmake git pkg-config libgtk-3-dev \
libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
libxvidcore-dev libx264-dev libjpeg-dev libpng-dev libtiff-dev \
gfortran openexr libatlas-base-dev python3-dev python3-numpy \
libtbb2 libtbb-dev libdc1394-22-dev
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D WITH_CUDA=ON \
-D ENABLE_FAST_MATH=1 \
-D CUDA_FAST_MATH=1 \
-D WITH_CUBLAS=1 \
-D OPENCV_GENERATE_PKGCONFIG=ON \
-D OPENCV_EXTRA_MODULES_PATH=~/opencv_build/opencv_contrib/modules \
-D WITH_GSTREAMER=ON \
-D WITH_V4L=ON \
-D WITH_LIBV4L=ON \
-D BUILD_opencv_python2=ON \
-D BUILD_opencv_python3=ON \
-D CUDA_ARCH_BIN=${ARCH_BIN} \
../
make -j$(nproc)
sudo make install
sudo ldconfig -v