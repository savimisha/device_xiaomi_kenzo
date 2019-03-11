add_lunch_combo lineage_kenzo-userdebug
add_lunch_combo lineage_kenzo-eng

export PATH_ROOT=${PWD}
export PATH_DEVICE=$PATH_ROOT/device/xiaomi/kenzo
$PATH_DEVICE/enable_patches.sh
