#!/usr/bin/env sh

echo '--- build start ---'
rm -rf deps/build

cd deps
mkdir -p build
cd build
cmake ..
make clean

make -j2 dep_libopenssl
make -j2 dep_wxwidgets
make -j2 dep_gtest
make -j2 dep_tbb
make -j2 dep_boost
make -j2 dep_cereal
make -j2 dep_nlopt
make -j2 dep_libcurl
make -j2 dep_qhull
make -j2 dep_libigl

echo '--- make the remaining if any ---'
make -j2 all

pwd
cd ../..
pwd

echo '--- building deps done ---'