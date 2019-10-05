#!/bin/bash
source /opt/devkitpro/switchvars.sh
CPUS=$((`nproc --all` + 1))
rm build -rf && mkdir build && cd build
cmake -DCMAKE_TOOLCHAIN_FILE=/opt/devkitpro/switch.cmake -DCMAKE_INSTALL_PREFIX=/opt/devkitpro/devkitA64/aarch64-none-elf/ -DLUA_USE_DLOPEN=OFF ..
make -j`echo $CPUS`
make install
