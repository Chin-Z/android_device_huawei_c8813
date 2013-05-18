$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/c8813/c8813-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/c8813/overlay

LOCAL_PATH := device/huawei/c8813
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_c8813
PRODUCT_DEVICE := c8813

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    device/huawei/c8813/modules/dhd_4330.ko:system/wifi/dhd_4330.ko \
    device/huawei/c8813/config/fstab.c8813:root/fstab.c8813 \
    device/huawei/c8813/config/init.huawei.rc:root/init.huawei.rc \
    device/huawei/c8813/config/init.usb.rc:root/init.usb.rc \
    device/huawei/c8813/config/ueventd.huawei.rc:root/ueventd.huawei.rc

# recovery ramdisk
PRODUCT_COPY_FILES += \
    device/huawei/c8813/config/init.recovery.huawei.rc:root/init.recovery.huawei.rc \
    device/huawei/c8813/prebuilt/recovery/charger:recovery/root/charger \
    device/huawei/c8813/prebuilt/recovery/sbin/charge:recovery/root/sbin/charge \
    device/huawei/c8813/prebuilt/recovery/sbin/charged:recovery/root/sbin/charged \
    device/huawei/c8813/prebuilt/recovery/sbin/hw_scsi_switch:recovery/root/sbin/hw_scsi_switch \
    device/huawei/c8813/prebuilt/recovery/sbin/check_root:recovery/root/sbin/check_root \
    device/huawei/c8813/prebuilt/recovery/sbin/resize2fs_wrapper:recovery/root/sbin/resize2fs_wrapper \
    device/huawei/c8813/prebuilt/recovery/sbin/check_secure_file:recovery/root/sbin/check_secure_file \
    device/huawei/c8813/prebuilt/recovery/sbin/resize2fs_s:recovery/root/sbin/resize2fs_s \
    device/huawei/c8813/prebuilt/recovery/sbin/e2fsck_s:recovery/root/sbin/e2fsck_s \
    device/huawei/c8813/prebuilt/recovery/sbin/test_diag:recovery/root/sbin/test_diag \
    device/huawei/c8813/prebuilt/recovery/sbin/atserver:recovery/root/sbin/atserver \
    device/huawei/c8813/prebuilt/recovery/sbin/rmt_oeminfo:recovery/root/sbin/rmt_oeminfo \
    device/huawei/c8813/prebuilt/recovery/sbin/rmt_storage:recovery/root/sbin/rmt_storage \
    device/huawei/c8813/prebuilt/recovery/sbin/oem_rpc_svc:recovery/root/sbin/oem_rpc_svc \
    device/huawei/c8813/prebuilt/recovery/sbin/port-bridge:recovery/root/sbin/port-bridge \
    device/huawei/c8813/prebuilt/recovery/tp/1191601.img:recovery/root/tp/1191601.img \
    device/huawei/c8813/prebuilt/recovery/res/keys:recovery/root/res/keys \
    device/huawei/c8813/prebuilt/recovery/res/images/charger/battery_charge.png:recovery/root/res/images/charger/battery_charge.png \
    device/huawei/c8813/prebuilt/recovery/res/images/charger/battery_5.png:recovery/root/res/images/charger/battery_5.png \
    device/huawei/c8813/prebuilt/recovery/res/images/charger/battery_2.png:recovery/root/res/images/charger/battery_2.png \
    device/huawei/c8813/prebuilt/recovery/res/images/charger/battery_3.png:recovery/root/res/images/charger/battery_3.png \
    device/huawei/c8813/prebuilt/recovery/res/images/charger/battery_1.png:recovery/root/res/images/charger/battery_1.png \
    device/huawei/c8813/prebuilt/recovery/res/images/charger/battery_fail.png:recovery/root/res/images/cahrger/battery_fail.png \
    device/huawei/c8813/prebuilt/recovery/res/images/charger/battery_0.png:recovery/root/res/images/charger/battery_0.png \
    device/huawei/c8813/prebuilt/recovery/res/images/charger/battery_4.png:recovery/root/res/images/charger/battery_4.png \
    device/huawei/c8813/prebuilt/recovery/res/images/normal/level0.png:recovery/root/res/images/normal/level0.png \
    device/huawei/c8813/prebuilt/recovery/res/images/normal/level3.png:recovery/root/res/images/normal/level3.png \
    device/huawei/c8813/prebuilt/recovery/res/images/normal/level4.png:recovery/root/res/images/normal/level4.png \
    device/huawei/c8813/prebuilt/recovery/res/images/normal/level5.png:recovery/root/res/images/normal/level5.png \
    device/huawei/c8813/prebuilt/recovery/res/images/normal/level2.png:recovery/root/res/images/normal/level2.png \
    device/huawei/c8813/prebuilt/recovery/res/images/normal/level1.png:recovery/root/res/images/normal/level1.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_08.png:recovery/root/res/images/480x854/number_08.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_04.png:recovery/root/res/images/480x854/number_04.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_10.png:recovery/root/res/images/480x854/battery_10.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_02.png:recovery/root/res/images/480x854/battery_02.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_11.png:recovery/root/res/images/480x854/battery_11.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_wait.png:recovery/root/res/images/480x854/number_wait.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_09.png:recovery/root/res/images/480x854/number_09.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_01.png:recovery/root/res/images/480x854/battery_01.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_02.png:recovery/root/res/images/480x854/number_02.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_05.png:recovery/root/res/images/480x854/battery_05.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_10.png:recovery/root/res/images/480x854/number_10.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_01.png:recovery/root/res/images/480x854/number_01.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/bg.png:recovery/root/res/images/480x854/bg.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_09.png:recovery/root/res/images/480x854/battery_09.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_04.png:recovery/root/res/images/480x854/battery_04.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_06.png:recovery/root/res/images/480x854/number_06.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_03.png:recovery/root/res/images/480x854/number_03.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_05.png:recovery/root/res/images/480x854/number_05.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_03.png:recovery/root/res/images/480x854/battery_03.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_06.png:recovery/root/res/images/480x854/battery_06.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_00.png:recovery/root/res/images/480x854/number_00.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/number_07.png:recovery/root/res/images/480x854/number_07.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_08.png:recovery/root/res/images/480x854/battery_08.png \
    device/huawei/c8813/prebuilt/recovery/res/images/480x854/battery_07.png:recovery/root/res/images/480x854/battery_07.png
