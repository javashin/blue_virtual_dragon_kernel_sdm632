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


export DTC_EXT=dtc
export CROSS_COMPILE=/usr/bin/aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=/usr/bin/arm-linux-gnueabihf-
export CC=/usr/bin/aarch64-linux-gnu-gcc-10
export CXX=/usr/bin/aarch64-linux-gnu-g++
export LD=/usr/bin/aarch64-linux-gnu-ld.bfd
export AR=/usr/bin/aarch64-linux-gnu-gcc-ar
export AS=/usr/bin/aarch64-linux-gnu-as
export NM=/usr/bin/aarch64-linux-gnu-gcc-nm
export RANLIB=/usr/bin/aarch64-linux-gnu-gcc-ranlib
export STRIP=/usr/bin/aarch64-linux-gnu-gcc-strip
export OBJCOPY=/usr/bin/aarch64-linux-gnu-objcopy
export OBJDUMP=/usr/bin/aarch64-linux-gnu-objdump
export HOSTCC=/usr/bin/aarch64-linux-gnu-gcc-10
export HOSTLD=/usr/bin/aarch64-linux-gnu-ld.bfd
export HOSTAR=/usr/bin/aarch64-linux-gnu-gcc-ar

export KCFLAGS+="-march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53"
export KBUILD_CFLAGS+="-march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53"

PATH="${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-linux-gnu-gcc-10 LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=arm-linux-gnueabihf- CROSS_COMPILE=aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y ocean_gcc_defconfig



PATH="${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-linux-gnu-gcc-10 LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=arm-linux-gnueabihf- CROSS_COMPILE=aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y oldconfig


PATH="${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-linux-gnu-gcc-10 LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=arm-linux-gnueabihf- CROSS_COMPILE=aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y nconfig



echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Compiling"
sleep 1



PATH="${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-linux-gnu-gcc-10 LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-Wno-error -O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53 -pipe" CROSS_COMPILE_ARM32=arm-linux-gnueabihf- CROSS_COMPILE=aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y 

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Boot-Image-Done."

cp /OUT/arch/arm64/boot/Image.gz-dtb .


#PATH="${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-linux-gnu-gcc-10 LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=arm-linux-gnueabihf- CROSS_COMPILE=aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y modules

#echo "##################################################"
#echo "##################################################"
#echo "##################################################"
#echo "##################################################"
#echo "Prima/Pronto Caf Wifi Driver Done."

#cp /OUT/drivers/staging/prima/wlan.ko .

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

#ls -lash /OUT/drivers/staging/prima/wlan.ko
#ls -lash  ./wlan.ko

python2 libufdt/src/mkdtboimg.py create /OUT/arch/arm64/boot/dtbo.img /OUT/arch/arm64/boot/dts/qcom/*.dtbo
cp /OUT/arch/arm64/boot/dtbo.img .
ls -lash /OUT/arch/arm64/boot/dtbo.img
ls -lash  ./dtbo.img

cp ./dtbo.img ./Image.gz-dtb ANYKERNEL/
#cp ./wlan.ko ANYKERNEL/modules/system/lib/modules/pronto/pronto_wlan.ko

cd ANYKERNEL/
rm 4.9.2*.zip
zip -r9 4.9.235-jsX-BvD_rV3-OCEAN-Thu-September-03-2020.zip * -x .git README.md *placeholder
cp 4.9.235-jsX-BvD_rV3-OCEAN-Thu-September-03-2020.zip /home/javashin/Desktop/
ls -lash 4.9.235-jsX-BvD_rV3-OCEAN-Thu-September-03-2020.zip ; pwd ; cd .. ; pwd



echo "done"


echo "YAY"
echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
echo "DONE By JavaShin-X 2020"



