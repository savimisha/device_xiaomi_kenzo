#!/bin/bash

export PATH_TO_ROOT=${PWD}
export PATH_SCRIPTS=$PATH_TO_ROOT/device/xiaomi/kenzo/patch
export PATH_TO_BT=system/bt

cd $PATH_TO_BT
git reset --hard
git clean -dfx
git apply $PATH_SCRIPTS/bt_calls_fix.patch
cd $PATH_TO_ROOT