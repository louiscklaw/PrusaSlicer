#!/usr/bin/env sh

# sudo apt autoremove
# sudo apt-get -y install cmake libboost-all-dev libcurl4-openssl-dev libnlopt-dev libwxgtk3.0-dev libcereal-dev libtbb-dev libudev-dev ninja-build

# rm -rf build
# rm -rf CMakeFiles
# rm -rf cmake/CMakeFiles
# rm -rf cmake/CMakeCache.txt

cd deps
mkdir build
cd build
cmake -G Ninja ..
ninja

# cd ../..
# mkdir build
# cd build
# cmake .. -G Ninja -DSLIC3R_STATIC=1 -DCMAKE_PREFIX_PATH="$PWD/../deps/build/destdir/usr/local"
# ninja
