#!/bin/bash
clear 

echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
date
echo "Start Compilation ^^^^^@^^^^  Time"
echo "Set TurboBoost For Faster Android Kernal Compilation"
/usr/bin/cpupower frequency-set -g performance
/usr/bin/x86_energy_perf_policy performance
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


#export DTC_EXT=dtc
#export CROSS_COMPILE=/usr/bin/aarch64-suse-linux-
#export CROSS_COMPILE_ARM32=/usr/bin/arm-suse-linux-gnueabi-
#export CC=/usr/bin/aarch64-suse-linux-gcc-11
#export CXX=/usr/bin/aarch64-suse-linux-g++11
#export LD=/usr/bin/aarch64-suse-linux-ld.bfd
#export AR=/usr/bin/aarch64-suse-linux-gcc-ar-11
#export AS=/usr/bin/aarch64-suse-linux-gcc-as-11
#export NM=/usr/bin/aarch64-suse-linux-gcc-nm-11
#export RANLIB=/usr/bin/aarch64-suse-linux-gcc-ranlib-11
#export STRIP=/usr/bin/aarch64-suse-linux-strip
##export OBJCOPY=/usr/bin/aarch64-suse-linux-objcopy
#export OBJDUMP=/usr/bin/aarch64-suse-linux-objdump
#export HOSTCC=/usr/bin/aarch64-suse-linux-gcc-11
#export HOSTLD=/usr/bin/aarch64-suse-linux-ld.bfd
#export HOSTAR=/usr/bin/aarch64-suse-linux-gcc-ar-11

export KCFLAGS+="-march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53"
export KBUILD_CFLAGS+="-march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53"

PATH="/cross-tc/arm32-gcc/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-unknown-linux-gnu-gcc LD=aarch64-unknown-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=arm-eabi- CROSS_COMPILE=aarch64-unknown-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y ocean_gcc_defconfig


PATH="/cross-tc/arm32-gcc/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-unknown-linux-gnu-gcc LD=aarch64-unknown-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=arm-eabi- CROSS_COMPILE=aarch64-unknown-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y oldconfig

PATH="/cross-tc/arm32-gcc/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-unknown-linux-gnu-gcc LD=aarch64-unknown-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=arm-eabi- CROSS_COMPILE=aarch64-unknown-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y nconfig



echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Compiling"
sleep 1


PATH="/cross-tc/arm32-gcc/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-unknown-linux-gnu-gcc LD=aarch64-unknown-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=arm-eabi- CROSS_COMPILE=aarch64-unknown-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Boot-Image-Done."

cp /OUT/arch/arm64/boot/Image.gz-dtb .


PATH="/cross-tc/arm32-gcc/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=aarch64-unknown-linux-gnu-gcc LD=aarch64-unknown-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53" CROSS_COMPILE_ARM32=arm-eabi- CROSS_COMPILE=aarch64-unknown-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y modules

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Prima/Pronto Caf Wifi Driver Done."

cp /OUT/drivers/staging/prima/wlan.ko .

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "DONE"

echo "Set Normal Speed To Cooldown CPU After Compilation"
/usr/bin/cpupower frequency-set -g powersave
/usr/bin/x86_energy_perf_policy power
echo "1" > /sys/devices/system/cpu/intel_pstate/no_turbo


ls -lash /OUT/arch/arm64/boot/Image.gz-dtb
ls -lash ./Image.gz-dtb

ls -lash /OUT/drivers/staging/prima/wlan.ko
ls -lash  ./wlan.ko

python2 libufdt/src/mkdtboimg.py create /OUT/arch/arm64/boot/dtbo.img /OUT/arch/arm64/boot/dts/qcom/*.dtbo
cp /OUT/arch/arm64/boot/dtbo.img .
ls -lash /OUT/arch/arm64/boot/dtbo.img
ls -lash  ./dtbo.img

cp ./dtbo.img ./Image.gz-dtb ANYKERNEL/
cp ./wlan.ko ANYKERNEL/modules/system/lib/modules/pronto/pronto_wlan.ko

cd ANYKERNEL/
rm 4.9.2*.zip
zip -r9 4.9.235-BvD-HyDrA_rV20+OCEAN-Sat-September-05-2020.zip * -x .git README.md *placeholder
cp 4.9.235-BvD-HyDrA_rV20+OCEAN-Sat-September-05-2020.zip /home/javashin/Desktop/
ls -lash 4.9.235-BvD-HyDrA_rV20+OCEAN-Sat-September-05-2020.zip ; pwd ; cd .. ; pwd



echo "done"


echo "YAY"
echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
echo "DONE By JavaShin-X 2020"



