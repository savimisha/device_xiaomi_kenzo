#!/bin/bash

export PATH_TO_ROOT=${PWD}
export PATH_SCRIPTS=$PATH_TO_ROOT/device/xiaomi/kenzo/patch
export PATH_TO_BT=system/bt
export PATH_TO_MESSAGING=packages/apps/Messaging
export PATH_TO_KERNEL=kernel/xiaomi/msm8956

cd $PATH_TO_BT
git reset --hard
git clean -dfx
git apply $PATH_SCRIPTS/bt_calls_fix.patch
cd $PATH_TO_ROOT

cd $PATH_TO_MESSAGING
git reset --hard
git clean -dfx
git apply $PATH_SCRIPTS/messaging_fix.patch
cd $PATH_TO_ROOT

cd $PATH_TO_KERNEL
git reset --hard
git clean -dfx
git apply $PATH_SCRIPTS/oldjackfix.patch
cd $PATH_TO_ROOT
