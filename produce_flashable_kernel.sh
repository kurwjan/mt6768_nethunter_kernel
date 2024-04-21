ZIPNAME="merlin-nethunter-lineage20-210ab80-$(TZ=Europe/Berlin date +"%Y%m%d-%H%M").zip"
AK3_DIR="AnyKernel3"

cp out/arch/arm64/boot/Image.gz-dtb $AK3_DIR
cp out/arch/arm64/boot/dtbo.img $AK3_DIR
rm -f *zip
cd $AK3_DIR
git checkout master &> /dev/null
zip -r9 "../$ZIPNAME" * -x '*.git*' README.md *placeholder
