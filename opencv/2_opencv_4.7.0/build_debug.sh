#!/bin/bash
rm -rf install && mkdir -p install
rm -rf build && mkdir -p build && cd build

cmake \
	-DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules \
	-DCMAKE_INSTALL_PREFIX=../install \
	-DCMAKE_BUILD_TYPE=Debug \
	-DBUILD_opencv_world=OFF \
	-DBUILD_SHARED_LIBS=ON \
	-DBUILD_EXAMPLES=ON \
	-DINSTALL_C_EXAMPLES=ON  \
	-DINSTALL_PYTHON_EXAMPLES=ON \
	-DBUILD_JPEG=ON \
	../opencv

VERBOSE=0 make -j30 && make install
