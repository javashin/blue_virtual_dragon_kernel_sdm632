#!/bin/bash
clear 

echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
date
echo "Start Compilation ^^^^^@^^^^  Time"
echo "Set TurboBoost For Faster Android Kernal Compilation"
/usr/bin/cpupower frequency-set -g performance
/usr/sbin/x86_energy_perf_policy performance
#printf "1"  > /sys/devices/system/cpu/cpufreq/boost

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

PATH="/COMPILING/clang-master/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE=/usr/bin/aarch64-linux-gnu- CROSS_COMPILE=/usr/bin/aarch64-linux-gnu- CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 CONFIG_NO_ERROR_ON_MISMATCH=y SELINUX_DEFCONFIG=selinux_defconfig ocean_defconfig

PATH="/COMPILING/clang-master/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE=/usr/bin/aarch64-linux-gnu- CROSS_COMPILE=/usr/bin/aarch64-linux-gnu- CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 CONFIG_NO_ERROR_ON_MISMATCH=y SELINUX_DEFCONFIG=selinux_defconfig oldconfig

PATH="/COMPILING/clang-master/bin:${PATH}" make O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y CROSS_COMPILE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE=/usr/bin/aarch64-linux-gnu- CROSS_COMPILE=/usr/bin/aarch64-linux-gnu- CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 CONFIG_NO_ERROR_ON_MISMATCH=y SELINUX_DEFCONFIG=selinux_defconfig nconfig



#cp /H2O-JSX OUT/.config SELINUX_DEFCONFIG=selinux_defconfig

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Compiling"
sleep 1

#export KCFLAGS+="-Wno-enum-conversion -Wno-uninitialized -Wno-logical-not-parentheses \
#-Wno-parentheses -Wno-incompatible-pointer-types -fno-stack-protector \
#-fno-merge-constants -Wno-ignored-optimization-argument -Wno-error \
#-Wno-tautological-constant-out-of-range-compare -Wno-xor-used-as-pow"
#-Wno-error=incompatible-pointer-types-discards-qualifiers
# -Wno-fortify-source -O3 -fno-stack-protector"

export KCFLAGS+="-march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo"
#-mcpu=kyro -mcpu=cortex-a73.cortex-a53 -march=armv8-a+fp+simd+crc+crypto -march=armv8-a+fp+simd+crc+crypto"
export KBUILD_CFLAGS+="-march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo"
#-mcpu=kyro -mcpu=cortex-a72.cortex-a53 -march=armv8-a+fp+simd+crc+crypto -march=armv8-a+fp+simd+crc+crypto"
#-Wno-error=misleading-indentation
#-Wno-error=incompatible-pointer-types-discards-qualifiers

PATH="/COMPILING/clang-master/bin:${PATH}" make -j$(nproc --all) O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -mllvm -polly -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo -Wno-error=misleading-indentation -Wno-error=incompatible-pointer-types-discards-qualifiers -Wno-enum-conversion" CROSS_COMPILE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE=/usr/bin/aarch64-linux-gnu- CROSS_COMPILE=/usr/bin/aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y

#PATH="/COMPILING/clang-master/bin:${PATH}" make -j$(nproc --all) O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -mllvm -polly -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo -Wno-error=misleading-indentation -Wno-enum-conversion -Wno-error=incompatible-pointer-types-discards-qualifiers" CROSS_COMPILE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE=/usr/bin/aarch64-linux-gnu- CROSS_COMPILE=/usr/bin/aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y  CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y modules 

#PATH="/COMPILING/clang-master/bin:${PATH}" make -j$(nproc --all) O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/usr/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -mllvm -polly -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo -Wno-error=misleading-indentation -Wno-enum-conversion -Wno-error=incompatible-pointer-types-discards-qualifiers" CROSS_COMPILE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE_ARM32=/usr/bin/arm-linux-gnueabihf- CLANG_TRIPLE=/usr/bin/aarch64-linux-gnu- CROSS_COMPILE=/usr/bin/aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y  CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y modules_install

#PATH="/COMPILING/clang-master/bin:/mnt/android-B/gcc-arm64-aarch64-none-linux-gnu/bin:/mnt/android-B/gcc-arm-none-linux-gnueabihf/bin:${PATH}" make -j$(nproc --all) O=OUT ARCH=arm64 SUBARCH=arm CC=clang DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -Wno-enum-conversion" CROSS_COMPILE_ARM32=arm-none-linux-gnueabihf- CLANG_TRIPLE_ARM32=arm-none-linux-gnueabihf- CLANG_TRIPLE=aarch64-none-linux-gnu- CROSS_COMPILE=aarch64-none-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y  CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y install

#PATH="/COMPILING/clang-master/bin:/mnt/android-B/gcc-arm64-aarch64-none-linux-gnu/bin:${PATH}" make -j$(nproc --all) O=OUT ARCH=arm64 SUBARCH=arm CC=clang DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -Wno-enum-conversion" CLANG_TRIPLE=aarch64-none-linux-gnu- CROSS_COMPILE=aarch64-none-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y  CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y tags 

#SELINUX_DEFCONFIG=selinux_defconfig

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "DONE"
echo "Set Normal Speed To Cooldown CPU After Compilation"
/usr/bin/cpupower frequency-set -g schedutil
/usr/sbin/x86_energy_perf_policy normal
#printf "0"  > /sys/devices/system/cpu/cpufreq/boost

rm ANYKERNEL/Image.gz-dtb
cp /OUT/arch/arm64/boot/Image.gz-dtb ANYKERNEL/
cd ANYKERNEL/
rm OCEAN-KERNEL-4.9.231-Blue-Virtual-Dragon_r2-31-JUL-2020.zip
zip -r9 OCEAN-KERNEL-4.9.231-Blue-Virtual-Dragon_r2-31-JUL-2020.zip * -x .git README.md *placeholder
cp OCEAN-KERNEL-4.9.231-Blue-Virtual-Dragon_r2-31-JUL-2020.zip /home/
ls -lash /OUT/arch/arm64/boot/Image.gz-dtb
ls -lash ./Image.gz-dtb
ls -lash ./OCEAN-KERNEL-4.9.231-Blue-Virtual-Dragon_r2-31-JUL-2020.zip

echo "YAY"
echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
echo "DONE By JavaShin-X"
