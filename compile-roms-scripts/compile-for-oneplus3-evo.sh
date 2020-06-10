#!/bin/bash

rm -rv out
# Sync
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# Set up environment
. build/envsetup.sh

# Choose a target
lunch aosp_oneplus3-userdebug

# Build the code
mka aosp_oneplus3 -j4 2>&1 | tee log.txt

cp -r /$HOME/LOS17.1/out/target/product/oneplus3/*.zip /$HOME/Desktop/