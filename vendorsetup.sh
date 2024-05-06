export ALLOW_MISSING_DEPENDENCIES=true

# Patches
RET=0
cd bootable/recovery
git apply ../../device/transsion/mt6785-common/patches/0001-twrp.cpp-Always-unmap-super-devices-on-fastbootd-mod.patch > /dev/null 2>&1 || RET=$?
git apply ../../device/transsion/mt6785-common/patches/0002-Change-haptics-activation-file-path.patch > /dev/null 2>&1 || RET=$?
cd ../../
if [ $RET -ne 0 ];then
    echo "ERROR: Patch is not applied! Maybe it's already patched?"
else
    echo "OK: All patched"
fi
