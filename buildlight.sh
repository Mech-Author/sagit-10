 #!/bin/bash

# Env
export ARCH=arm64
export SUBARCH=arm64
export PATH=~/.gcc-arm-9.2-2019.12-x86_64-aarch64-none-linux-gnu/bin:$PATH
export CROSS_COMPILE=aarch64-none-linux-gnu-

# CMP
make clean 
make mrproper
args="-j$(nproc --all) O=out ARCH=arm64 SUBARCH=arm64 CROSS_COMPILE=aarch64-none-linux-gnu-"
make $args sagit_defconfig
make $args CONFIG_DEBUG_SECTION_MISMATCH=y
