#!/bin/bash
mkdir build
cd build
cmake -DBUILD_ALL=ON \
      -DCMAKE_INCLUDE_PATH=$PREFIX/include \
      -DBOOST_INCLUDE_DIR=$PREFIX/include \
      -DPYTHON_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON \
      "-DTHIRDPARTY_COMMON_ARGS=-DCMAKE_VERBOSE_MAKEFILE:BOOL=ON" \
      ..
make VERBOSE=1 -j${CPU_COUNT}
make install
