#!/usr/bin/env sh

echo '--- install dependaces ---'
# sudo apt install -y make cmake ninja-build
# sudo apt install -y libgl1-mesa-dev mesa-common-dev libglu1-mesa-dev freeglut3-dev libglfw3-dev libgles2-mesa-dev
# sudo apt install -y gtk2.0 build-essential libgtk2.0-dev
# sudo apt-get install -y build-essential libgtk2.0-dev libwxgtk3.0-dev libwx-perl libmodule-build-perl git cpanminus libextutils-cppguess-perl libboost-all-dev libxmu-dev liblocal-lib-perl wx-common libopengl-perl libwx-glcanvas-perl libtbb-dev libxmu-dev freeglut3-dev libwxgtk-media3.0-dev libboost-thread-dev libboost-system-dev libboost-filesystem-dev libcurl4-openssl-dev
echo '--- install dependaces done ---'

echo '--- list installed packages ---'
apt list --installed
echo '--- list installed packages done ---'

rm -rf deps/build
rm -rf build

echo '--- build start ---'
cd deps
mkdir -p build
cd build
cmake ..
make

cd ../..
mkdir build
cd build
cmake ..   -DCMAKE_PREFIX_PATH="$PWD/../deps/build/destdir/usr/local"
make
echo '--- build done ---'


# mkdir build
# cd build
# # cmake .. -DSLIC3R_WX_STABLE=1
# #   -DSLIC3R_STATIC=0 \
# # cmake ..\
# #   -DSLIC3R_FHS=1 \
# #   -DSLIC3R_WX_STABLE=1 \
# #   -DSLIC3R_PCH=0 \
# #   -DCMAKE_INSTALL_PREFIX=/usr \
# #   -DCMAKE_INSTALL_LIBDIR=lib

# cmake .. -DSLIC3R_WX_STABLE=1 -DSLIC3R_STATIC=0

# make -j

# # ls -l $TBBROOT
# # sudo apt-get install cmake libblkid-dev e2fslibs-dev libboost-all-dev libaudit-dev libtbb-dev libcurl3