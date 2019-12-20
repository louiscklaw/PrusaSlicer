#!/usr/bin/env sh

sh ./build_make_deps.sh | tee build_make_deps.log
sh ./build_make_main.sh | tee build_make_main.log

pipenv run python3 travis-broadcast.py \#travis-build-result "prusaslicer build done"

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
