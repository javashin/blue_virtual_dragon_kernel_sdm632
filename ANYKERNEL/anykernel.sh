# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=-#- 4.9.237-BvD-FaLkOr_rV23+ Experimental AOSP MSM-4.9-r27 Branch For Moto G7 Power Ocean -#-
do.devicecheck=1
do.modules=0
do.cleanup=1
do.systemless=1
do.cleanuponabort=0
device.name1=ocean
supported.versions=
supported.patchlevels=
'; } # end properties

block=/dev/block/by-name/boot;
is_slot_device=auto;
ramdisk_compression=lzma;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

ui_print " "
ui_print "Device: Moto G7 Power (OCEAN)"
ui_print "Kernel Name: Blue Virtual Dragon King Ghidorah "
ui_print "Build User: root = javashin"
ui_print "KVer:  4.9.237-BvD-FaLkOr_rV23+ jsX-Ocean SMP PREEMPT aarch64"
ui_print "Wed 23 September 2020"
ui_print "Toolchain Info:"
ui_print "Blue-Virtual-Dragon Gentoo GCC 11.0.0 LTO+PGO+GRAPHITE Riced Optimized"
ui_print "aarch64-unknown-linux-gnu-gcc -v & armv7-unknown-linux-gnueabihf-gcc -v"
ui_print "gcc version 11.0.0.20200919 (Gentoo 11.0.0_pre9999 p4)"
ui_print "Blue-Virtual-Dragon Binutils 2.35.0 LTO+PGO+GRAPHITE Riced Optimized"
ui_print "GNU ld (Gentoo 2.35 p1) -2.35.0-"
ui_print "CFLAGS/KBUILD_FLAGS=-O3 -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53 -falign-functions=32 -flimit-function-alignment -fno-math-errno -fno-trapping-math -fgraphite-identity -floop-nest-optimize -fno-stack-protector -fno-strict-aliasing --param=inline-min-speedup=15 --param=max-inline-insns-single=200 --param=max-inline-insns-auto=30 --param=early-inlining-insns=1"
ui_print " "

write_boot;
## end install

