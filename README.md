# Merlin (Redmi Note 9 / Redmi 10X 4G) Nethunter Kernel

#### `REDMI 9 / REDMI 9 PRIME (lancelot) IS UNTESTED!`

Based on the [lineage kernel](https://github.com/LineageOS/android_kernel_xiaomi_mt6768) with Android 13 support and applied with patches for Nethunter support. Optimization patches or similar won't be added.

*Everything should work, I couldn't test it yet.*

## Build
Have **Ubuntu 20.04**. *(You can use [distrobox](https://wiki.archlinux.org/title/Distrobox))*

 1. Run `setup_environment.sh` for downloading the compiler etc.
 2. Run `build.sh` for building the kernel.
 3. Run `produce_flashable_kernel.sh`  for creating a AnyKernel zip which you can flash in TWRP, OrangeFox etc.

Run `make clean && make mrproper` for cleaning the environment.
