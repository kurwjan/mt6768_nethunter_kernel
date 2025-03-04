### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Nethunter lineage kernel for Redmi Note 9 / Redmi 10X 4G (merlin)
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=merlin
device.name2=merlinx
device.name3=lancelot
device.name4=
device.name5=
supported.versions=13.0
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install
## boot files attributes
attributes() {
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;
} # end attributes

# boot shell variables
block=/dev/block/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh && attributes;

dump_boot;
write_boot; # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk
## end boot install
