#!/usr/bin/env sh

rm -rf deps/build
rm -rf build

mkdir -p deps/build
mkdir build

echo '--- build deps start ---'

cd deps/build

cmake ..
make clean
make all

pwd
cd ../..
pwd

echo '--- building deps done ---'

echo '--- build main start ---'

cd build

cmake .. -DSLIC3R_WX_STABLE=1 -DSLIC3R_STATIC=1  -DCMAKE_PREFIX_PATH="$PWD/../deps/build/destdir/usr/local"
# make

pwd
cd ..
pwd

echo '--- build main done ---'