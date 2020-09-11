# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=-#- JavaShin-X KERNEL Blue-Virtual-Dragon -WENO- MSM-4.9-r27 Branch For Moto G7 RIVER -#-
do.devicecheck=1
do.modules=0
do.cleanup=1
do.systemless=1
do.cleanuponabort=0
device.name1=river
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/mmcblk0p42;
is_slot_device=1;
ramdisk_compression=lzma;

#block=/dev/block/by-name/boot;
#is_slot_device=auto;
#ramdisk_compression=lzma;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
#set_perm_recursive 0 0 755 644 $ramdisk/*;
#set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;


## AnyKernel install
dump_boot;

# begin ramdisk changes

# init.rc
#backup_file init.rc;
#replace_string init.rc "cpuctl cpu,timer_slack" "mount cgroup none /dev/cpuctl cpu" "mount cgroup none /dev/cpuctl cpu,timer_slack";

# init.tuna.rc
#backup_file init.tuna.rc;
#insert_line init.tuna.rc "nodiratime barrier=0" after "mount_all /fstab.tuna" "\tmount ext4 /dev/block/platform/omap/omap_hsmmc.0/by-name/userdata /data remount nosuid nodev noatime nodiratime barrier=0";
#append_file init.tuna.rc "bootscript" init.tuna;

# fstab.tuna
#backup_file fstab.tuna;
#patch_fstab fstab.tuna /system ext4 options "noatime,barrier=1" "noatime,nodiratime,barrier=0";
#patch_fstab fstab.tuna /cache ext4 options "barrier=1" "barrier=0,nomblk_io_submit";
#patch_fstab fstab.tuna /data ext4 options "data=ordered" "nomblk_io_submit,data=writeback";
#append_file fstab.tuna "usbdisk" fstab;

# end ramdisk changes
ui_print " "
ui_print "Device: Moto G7 (RIVER)"
ui_print "Kernel Name: -WENO- Custo-Kernal-JavaShin-X"
ui_print "Build User: root = javashin"
ui_print "KVer: 4.9.235-jsX-BvD_rV4+ jsX-River SMP PREEMPT aarch64"
ui_print "Friday 11 September 2020"
ui_print "Toolchain Info:"
ui_print "Blue-Virtual-Dragon GCC 10.2.0 LTO+PGO+GRAPHITE Riced Optimized"
ui_print "aarch64-unknown-linux-gnu-gcc -v & armv7-unknown-linux-gnueabihf-gcc -v"
ui_print "gcc version 10.2.0 (Gentoo 10.2.0-r1 p2)"
ui_print "aarch64-unknown-linux-gnu-ld -v & armv7-unknown-linux-gnueabihf-ld -v"
ui_print "Blue-Virtual-Dragon GCC 10.2.0 LTO+PGO+GRAPHITE Riced Optimized"
ui_print "Blue-Virtual-Dragon Binutils 2.35.0 LTO+PGO+GRAPHITE Riced Optimized"
ui_print "GNU ld (Gentoo 2.35 p1) 2.35.0"
ui_print "CFLAGS/KBUILD_FLAGS=-O3 -march=armv8-a+fp+simd+crc+crypto -mcpu=cortex-a73.cortex-a53 -mtune=cortex-a73.cortex-a53 -falign-functions=32 -flimit-function-alignment -fno-math-errno -fno-trapping-math -fgraphite-identity -floop-nest-optimize -fno-stack-protector -fno-strict-aliasing --param=inline-min-speedup=15 --param=max-inline-insns-single=200 --param=max-inline-insns-auto=30 --param=early-inlining-insns=1"
ui_print " "


write_boot;
## end install

