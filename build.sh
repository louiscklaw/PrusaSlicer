#!/usr/bin/env sh

sudo apt-get -y install cmake libboost-all-dev libcurl4-openssl-dev libnlopt-dev libwxgtk3.0-dev libcereal-dev libtbb-dev libudev-dev

rm -rf build
rm -rf CMakeFiles
rm -rf cmake/CMakeFiles
rm -rf cmake/CMakeCache.txt


mkdir build
cd build
# cmake .. -DSLIC3R_WX_STABLE=1
#   -DSLIC3R_STATIC=0 \
# cmake ..\
#   -DSLIC3R_FHS=1 \
#   -DSLIC3R_WX_STABLE=1 \
#   -DSLIC3R_PCH=0 \
#   -DCMAKE_INSTALL_PREFIX=/usr \
#   -DCMAKE_INSTALL_LIBDIR=lib

cmake .. -DSLIC3R_WX_STABLE=1 -DSLIC3R_STATIC=0

make -j

# ls -l $TBBROOT
# sudo apt-get install cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev libtbb-dev libcurl3