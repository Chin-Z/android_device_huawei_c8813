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

PRODUCT_COPY_FILES += \
          device/huawei/c8813/config/init.recovery.huawei.rc:root/init.recovery.huawei.rc
