#!/usr/bin/env sh

echo '--- build start ---'
rm -rf deps/build

cd deps
mkdir -p build
cd build
cmake ..

make dep_libopenssl &
make dep_wxwidgets &
make dep_gtest &
make dep_tbb &
make dep_boost &
make dep_cereal &
make dep_nlopt &
make dep_libcurl &
make dep_qhull &
make dep_libigl

wait

echo '--- make the remaining if any ---'
make all

pwd
cd ../..
pwd

echo '--- building deps done ---'