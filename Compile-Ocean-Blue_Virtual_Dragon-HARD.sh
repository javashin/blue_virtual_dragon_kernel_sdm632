#!/bin/bash
clear 

echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
date
echo "Start Compilation ^^^^^@^^^^  Time"
echo "Set TurboBoost For Faster Android Kernal Compilation"
/usr/bin/cpupower frequency-set -g performance
/usr/sbin/x86_energy_perf_policy performance
echo "1" > /sys/devices/system/cpu/intel_pstate/no_turbo

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Preparing"
sleep 1

umount /OUT
rm -rf /OUT
export ARCH=arm64
export SUBARCH=arm
mkdir /OUT
mount /OUT

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Configuring SelinuxKernel Enforce."
sleep 1


export KBUILD_BUILD_VERSION=1
export KBUILD_BUILD_USER=JavaShin-X
export KBUILD_BUILD_HOST=igloo-l440
export KBUILD_BUILD_TIMESTAMP="$(date -d "@$(git --no-pager show -s --format=%ct)")"


export CROSS_COMPILE=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf-
export CROSS_COMPILE_ARM32=/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin/arm-eabi-
export LD=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf-ld.bfd
export HOSTLD=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf-ld.bfd



PATH="/mnt/android-B/@/COMPILING/clang-master/bin:/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin:/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin/arm-eabi- CLANG_TRIPLE_ARM32=/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin/arm-eabi- CLANG_TRIPLE=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf- CROSS_COMPILE=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf- SELINUX_DEFCONFIG=selinux_defconfig ocean_defconfig

PATH="/mnt/android-B/@/COMPILING/clang-master/bin:/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin:/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin/arm-eabi- CLANG_TRIPLE_ARM32=/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin/arm-eabi- CLANG_TRIPLE=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf- CROSS_COMPILE=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf- SELINUX_DEFCONFIG=selinux_defconfig oldconfig

PATH="/mnt/android-B/@/COMPILING/clang-master/bin:/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin:/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin/arm-eabi- CLANG_TRIPLE_ARM32=/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin/arm-eabi- CLANG_TRIPLE=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf- CROSS_COMPILE=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf- SELINUX_DEFCONFIG=selinux_defconfig nconfig


echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Compiling"
sleep 1


PATH="/mnt/android-B/@/COMPILING/clang-master/bin:/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin:/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin/arm-eabi- CLANG_TRIPLE_ARM32=/mnt/android-B/@/COMPILING/cross-tc/arm32-gcc/bin/arm-eabi- CLANG_TRIPLE=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf- CROSS_COMPILE=/mnt/android-B/@/COMPILING/cross-tc/arm64-gcc/bin/aarch64-elf- SELINUX_DEFCONFIG=selinux_defconfig KCFLAGS+="-D_FORTIFY_SOURCE=2 -O2 -march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo -fstack-protector-strong -pipe" V=0


echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "DONE"

echo "Set Normal Speed To Cooldown CPU After Compilation"
/usr/bin/cpupower frequency-set -g powersave
/usr/sbin/x86_energy_perf_policy power
echo "1" > /sys/devices/system/cpu/intel_pstate/no_turbo


cp /OUT/arch/arm64/boot/Image.gz-dtb .

ls -lash /OUT/arch/arm64/boot/Image.gz-dtb
ls -lash ./Image.gz-dtb


echo "YAY"
echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
echo "DONE By JavaShin-X 2020"
