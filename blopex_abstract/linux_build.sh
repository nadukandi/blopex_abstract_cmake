#!/bin/bash

if [[ -d "./build" && ! -L "./build" ]] ; then
    cd build
else
    mkdir build
    cd build
fi
if [[ -d "./linux" && ! -L "./linux" ]] ; then
    cd linux
else
    mkdir linux
    cd linux
fi
cmake ../.. -G "Unix Makefiles" \
            -DCMAKE_CONFIGURATION_TYPES="Release" \
            -DCMAKE_INSTALL_PREFIX=../../install/linux
make
make install
cd ../..
