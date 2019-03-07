#!/bin/bash 
cd system/bt
git reset --hard
git apply ../../device/xiaomi/kenzo/bt_calls_fix.patch
cd ../../