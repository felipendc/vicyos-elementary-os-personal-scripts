#!/bin/bash

rm -rv out
repo sync
source build/envsetup.sh
breakfast oneplus3
croot
brunch oneplus3 2>&1 | tee log.txt
cp -r /$HOME/LOS17.1/out/target/product/oneplus3/*.zip /$HOME/Desktop/