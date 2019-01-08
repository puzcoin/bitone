#!/bin/bash
# create multiresolution windows icon
#mainnet
ICON_SRC=../../src/qt/res/icons/bone.png
ICON_DST=../../src/qt/res/icons/bone.ico
convert ${ICON_SRC} -resize 16x16 bone-16.png
convert ${ICON_SRC} -resize 32x32 bone-32.png
convert ${ICON_SRC} -resize 48x48 bone-48.png
convert bone-16.png bone-32.png bone-48.png ${ICON_DST}
#testnet
ICON_SRC=../../src/qt/res/icons/bone_testnet.png
ICON_DST=../../src/qt/res/icons/bone_testnet.ico
convert ${ICON_SRC} -resize 16x16 bone-16.png
convert ${ICON_SRC} -resize 32x32 bone-32.png
convert ${ICON_SRC} -resize 48x48 bone-48.png
convert bone-16.png bone-32.png bone-48.png ${ICON_DST}
rm bone-16.png bone-32.png bone-48.png
#regtest
ICON_SRC=../../src/qt/res/icons/bone_regtest.png
ICON_DST=../../src/qt/res/icons/bone_regtest.ico
convert ${ICON_SRC} -resize 16x16 bone-16.png
convert ${ICON_SRC} -resize 32x32 bone-32.png
convert ${ICON_SRC} -resize 48x48 bone-48.png
convert bone-16.png bone-32.png bone-48.png ${ICON_DST}
rm bone-16.png bone-32.png bone-48.png
#unittest
ICON_SRC=../../src/qt/res/icons/bone_unittest.png
ICON_DST=../../src/qt/res/icons/bone_unittest.ico
convert ${ICON_SRC} -resize 16x16 bone-16.png
convert ${ICON_SRC} -resize 32x32 bone-32.png
convert ${ICON_SRC} -resize 48x48 bone-48.png
convert bone-16.png bone-32.png bone-48.png ${ICON_DST}
rm bone-16.png bone-32.png bone-48.png