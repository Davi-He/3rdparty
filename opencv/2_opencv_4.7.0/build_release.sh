#!/bin/bash
rm -rf install && mkdir -p install
rm -rf build && mkdir -p build && cd build

cmake \
	-DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules \
	-DCMAKE_INSTALL_PREFIX=../install \
	-DCMAKE_BUILD_TYPE=Release \
	../opencv

make -j30 && make install
