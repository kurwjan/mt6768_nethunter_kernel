TC_DIR="$PWD/tc"
CLANG_DIR="$TC_DIR/prelude-clang"
GCC_64_DIR="$TC_DIR/aarch64-linux-android-4.9"
GCC_32_DIR="$TC_DIR/arm-linux-androideabi-4.9"

# Build Environment (Ubuntu 20.04)
sudo -E apt-get update
sudo -E apt-get install bc python2 python3 python-is-python3 -y

## Xiaomi MiCode build packages (https://github.com/MiCode/Xiaomi_Kernel_OpenSource/wiki/How-to-compile-kernel-standalone)
sudo -E dpkg --add-architecture i386
sudo -E apt-get install git ccache automake flex lzop bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 g++-multilib python3-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng maven libssl-dev pwgen libswitch-perl policycoreutils minicom libxml-sax-base-perl libxml-simple-perl bc libc6-dev-i386 lib32ncurses-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev xsltproc unzip

# Check for essentials
if ! [ -d "${CLANG_DIR}" ]; then
echo "Clang not found! Cloning to ${CLANG_DIR}..."
if ! git clone --depth=1 https://gitlab.com/jjpprrrr/prelude-clang.git -b master ${CLANG_DIR}; then
echo "Cloning failed! Aborting..."
exit 1
fi
fi

if ! [ -d "${GCC_64_DIR}" ]; then
echo "gcc not found! Cloning to ${GCC_64_DIR}..."
if ! git clone --depth=1 -b lineage-19.1 https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9.git ${GCC_64_DIR}; then
echo "Cloning failed! Aborting..."
exit 1
fi
fi

if ! [ -d "${GCC_32_DIR}" ]; then
echo "gcc_32 not found! Cloning to ${GCC_32_DIR}..."
if ! git clone --depth=1 -b lineage-19.1 https://github.com/LineageOS/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9.git ${GCC_32_DIR}; then
echo "Cloning failed! Aborting..."
exit 1
fi
fi
