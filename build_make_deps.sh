#!/usr/bin/env sh

echo '--- build start ---'

cd deps/build

cmake ..
make clean
make all

pwd
cd ../..
pwd

echo '--- building deps done ---'