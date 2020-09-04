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

PATH="/COMPILING/clang-master/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/COMPILING/clang-master/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -mllvm -polly -mllvm -polly-run-dce -mllvm -polly-run-inliner -mllvm -polly-opt-fusion=max -mllvm -polly-ast-use-context -mllvm -polly-detect-keep-going -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo -Wno-error=incompatible-pointer-types-discards-qualifiers -pipe" CROSS_COMPILE_ARM32=/COMPILING/clang-master/bin/arm-linux-gnueabi- CLANG_TRIPLE_ARM32=/COMPILING/clang-master/bin/arm-linux-gnueabi- CLANG_TRIPLE=/COMPILING/clang-master/bin/aarch64-linux-gnu- CROSS_COMPILE=/COMPILING/clang-master/bin/aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y ocean_defconfig

PATH="/COMPILING/clang-master/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/COMPILING/clang-master/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -mllvm -polly -mllvm -polly-run-dce -mllvm -polly-run-inliner -mllvm -polly-opt-fusion=max -mllvm -polly-ast-use-context -mllvm -polly-detect-keep-going -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo -Wno-error=incompatible-pointer-types-discards-qualifiers -pipe" CROSS_COMPILE_ARM32=/COMPILING/clang-master/bin/arm-linux-gnueabi- CLANG_TRIPLE_ARM32=/COMPILING/clang-master/bin/arm-linux-gnueabi- CLANG_TRIPLE=/COMPILING/clang-master/bin/aarch64-linux-gnu- CROSS_COMPILE=/COMPILING/clang-master/bin/aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y oldconfig

PATH="/COMPILING/clang-master/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/COMPILING/clang-master/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -mllvm -polly -mllvm -polly-run-dce -mllvm -polly-run-inliner -mllvm -polly-opt-fusion=max -mllvm -polly-ast-use-context -mllvm -polly-detect-keep-going -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo -Wno-error=incompatible-pointer-types-discards-qualifiers -pipe" CROSS_COMPILE_ARM32=/COMPILING/clang-master/bin/arm-linux-gnueabi- CLANG_TRIPLE_ARM32=/COMPILING/clang-master/bin/arm-linux-gnueabi- CLANG_TRIPLE=/COMPILING/clang-master/bin/aarch64-linux-gnu- CROSS_COMPILE=/COMPILING/clang-master/bin/aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y nconfig



echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "Compiling"
sleep 1

export KCFLAGS+="-march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo"
export KBUILD_CFLAGS+="-march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo"


PATH="/COMPILING/clang-master/bin:${PATH}" make -j3 O=/OUT ARCH=arm64 SUBARCH=arm CC=clang LD=/COMPILING/clang-master/bin/aarch64-linux-gnu-ld.bfd DTC_EXT=dtc CONFIG_BUILD_ARM64_DT_OVERLAY=y KCFLAGS+="-O3 -mllvm -polly -mllvm -polly-run-dce -mllvm -polly-run-inliner -mllvm -polly-opt-fusion=max -mllvm -polly-ast-use-context -mllvm -polly-detect-keep-going -mllvm -polly-vectorizer=stripmine -mllvm -polly-invariant-load-hoisting -fno-stack-protector -march=armv8-a+fp+simd+crc+crypto -mcpu=kryo -mtune=kryo -Wno-error=incompatible-pointer-types-discards-qualifiers -pipe" CROSS_COMPILE_ARM32=/COMPILING/clang-master/bin/arm-linux-gnueabi- CLANG_TRIPLE_ARM32=/COMPILING/clang-master/bin/arm-linux-gnueabi- CLANG_TRIPLE=/COMPILING/clang-master/bin/aarch64-linux-gnu- CROSS_COMPILE=/COMPILING/clang-master/bin/aarch64-linux-gnu- CONFIG_NO_ERROR_ON_MISMATCH=y CONFIG_INPUT_FOCALTECH_0FLASH_MMI_IC_NAME=ft8719 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83102 CONFIG_INPUT_HIMAX_V2_MMI_IC_NAME=hx83112 SELINUX_DEFCONFIG=selinux_defconfig CONFIG_RD_ZSTD=y CONFIG_CRYPTO_STREEBOG=y CONFIG_CRYPTO_ZSTD=y CONFIG_XXHASH=y CONFIG_DECOMPRESS_ZSTD=y CONFIG_ZSTD_COMPRESS=y CONFIG_ZSTD_DECOMPRESS=y FB_MSM_MDSS_KCAL_CTRL=y 

echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "##################################################"
echo "DONE"

echo "Set Normal Speed To Cooldown CPU After Compilation"
/usr/bin/cpupower frequency-set -g powersave
/usr/sbin/x86_energy_perf_policy power
echo "1" > /sys/devices/system/cpu/intel_pstate/no_turbo

rm ANYKERNEL/Image.gz-dtb
cp /OUT/arch/arm64/boot/Image.gz-dtb .
python2 libufdt/src/mkdtboimg.py create /OUT/arch/arm64/boot/dtbo.img /OUT/arch/arm64/boot/dts/qcom/*.dtbo
cp /OUT/arch/arm64/boot/dtbo.img .
ls -lash /OUT/arch/arm64/boot/dtbo.img
ls -lash  ./dtbo.img
ls -lash /OUT/arch/arm64/boot/Image.gz-dtb
ls -lash ./Image.gz-dtb
cp ./dtbo.img ./Image.gz-dtb ANYKERNEL/
cd ANYKERNEL/
rm 4.9.2*.zip
zip -r9 4.9.235-jsX-BvD_rV3-OCEAN-Thu-September-03-2020.zip * -x .git README.md *placeholder
cp 4.9.235-jsX-BvD_rV3-OCEAN-Thu-September-03-2020.zip /home/javashin/Desktop/
ls -lash 4.9.235-jsX-BvD_rV3-OCEAN-Thu-September-03-2020.zip ; pwd ; cd .. ; pwd


echo "YAY"
echo "KERNAL KERNAL KERNAL KERNAL KARNAL KARMA KARMA KARMA"
echo "DONE By JavaShin-X 2020"
