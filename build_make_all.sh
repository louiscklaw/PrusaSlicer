#!/usr/bin/env sh

bash scripts/ubuntu_apt_get.sh

rm -rf deps/build
rm -rf build

mkdir -p deps/build
mkdir build

echo '--- build deps start ---'

cd deps/build
  cmake ..
  make
cd ../..

echo '--- building deps done ---'

echo '--- build main start ---'

cd build
  cmake .. -DSLIC3R_WX_STABLE=1 -DSLIC3R_STATIC=1  -DCMAKE_PREFIX_PATH="$PWD/../deps/build/destdir/usr/local"
  make
cd ..

echo '--- build main done ---'