#!/usr/bin/env sh

echo '--- build start ---'
rm -rf deps/build

cd deps
mkdir -p build
cd build
cmake ..
make help
make clean
make -j2

pwd
cd ../..
pwd

echo '--- building deps done ---'