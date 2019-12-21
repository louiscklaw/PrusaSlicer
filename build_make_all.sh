#!/usr/bin/env sh

rm -rf deps/build
rm -rf build

mkdir -p deps/build
mkdir build

sh build_make_deps.sh | tee build_make_deps.log
sh build_make_main.sh | tee build_make_main.log