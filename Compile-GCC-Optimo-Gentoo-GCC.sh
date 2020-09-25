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

export CROSS_COMPILE=/usr/bin/aarch64-unknown-linux-gnu-
export CROSS_COMPILE_ARM32=/usr/bin/armv7-unknown-linux-gnueabihf-
export CC=/usr/bin/aarch64-unknown-linux-gnu-gcc
export LD=/usr/bin/aarch64-unknown-linux-gnu-ld.bfd
export AR=/usr/bin/aarch64-unknown-linux-gnu-ar
export AS=/usr/bin/aarch64-unknown-linux-gnu-as
export NM=/usr/bin/aarch64-unknown-linux-gnu-nm
export RANLIB=/usr/bin/aarch64-unknown-linux-gnu-ranlib
export STRIP=/usr/bin/aarch64-unknown-linux-gnu-strip
export OBJCOPY=/usr/bin/aarch64-unknown-linux-gnu-objcopy
export OBJDUMP=/usr/bin/aarch64-unknown-linux-gnu-objdump
export HOSTCC=/usr/bin/aarch64-unknown-linux-gnu-gcc
export HOSTLD=/usr/bin/aarch64-unknown-linux-gnu-ld.bfd
export HOSTAR=/usr/bin/aarch64-unknown-linux-gnu-gcc-ar

PATH="${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-unknown-linux-gnu-gcc LD=aarch64-unknown-linux-gnu-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=armv7-unknown-linux-gnueabihf- CROSS_COMPILE=aarch64-unknown-linux-gnu- ocean_defconfig

#PATH="${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-unknown-linux-gnu-gcc LD=aarch64-unknown-linux-gnu-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=armv7-unknown-linux-gnueabihf- CROSS_COMPILE=aarch64-unknown-linux-gnu- oldconfig

#PATH="${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-unknown-linux-gnu-gcc LD=aarch64-unknown-linux-gnu-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=armv7-unknown-linux-gnueabihf- CROSS_COMPILE=aarch64-unknown-linux-gnu- nconfig


echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Compiling"
sleep 1


PATH="${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-unknown-linux-gnu-gcc LD=aarch64-unknown-linux-gnu-ld.bfd CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-Wno-error -D_FORTIFY_SOURCE=1 -fstack-protector-strong -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=armv7-unknown-linux-gnueabihf- CROSS_COMPILE=aarch64-unknown-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y


echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Boot-Image-Done."

cp /OUT/arch/arm64/boot/Image.gz-dtb .


echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "DONE"

echo "Set Normal Speed To Cooldown CPU After Compilation"
/usr/bin/cpupower frequency-set -g powersave
/usr/sbin/x86_energy_perf_policy power
echo "1" > /sys/devices/system/cpu/intel_pstate/no_turbo


ls -lash /OUT/arch/arm64/boot/Image.gz-dtb
ls -lash ./Image.gz-dtb

cp ./Image.gz-dtb ANYKERNEL/


cd ANYKERNEL/
rm ./dtbo.img
rm 4.9.2*.zip
zip -r9 4.9.237-jsX-AndroidHardened+OCEAN-Fri-September-25-2020-SEC.zip * -x .git README.md *placeholder
cp 4.9.237-jsX-AndroidHardened+OCEAN-Fri-September-25-2020-SEC.zip /home/javashin/Desktop/
ls -lash 4.9.237-jsX-AndroidHardened+OCEAN-Fri-September-25-2020-SEC.zip ; pwd ; cd .. ; pwd

echo "done"


echo "YAY"
echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
echo "DONE By JavaShin-X 2020"



