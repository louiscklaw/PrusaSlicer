#!/usr/bin/env sh

echo '--- build main start ---'
rm -rf build

mkdir build
cd build
cmake .. -DSLIC3R_WX_STABLE=1 -DSLIC3R_STATIC=1  -DCMAKE_PREFIX_PATH="$PWD/../deps/build/destdir/usr/local"
# make
pwd
cd ..
pwd

echo '--- build main done ---'