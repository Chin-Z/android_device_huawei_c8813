USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/c8813/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := c8813

BOARD_KERNEL_CMDLINE := androidboot.hardware=huawei loglevel=1
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
# /dev/block/mmcblk0p17 /system ext4 1048576*1024 = 1073741824
# /dev/block/mmcblk0p18 /data ext4 1179648*1024 = 1207959552
# /dev/block/mmcblk0p12 boot mtd 8192*1024 = 8388608
# /dev/block/mmcblk0p5 recovery mtd 20480*1024 = 20971520
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608 # 8MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520 # 20MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824 # 1024MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1207959552 # 1152MB
BOARD_FLASH_BLOCK_SIZE := 131072 # BOARD_KERNEL_PAGESIZE*64

TARGET_PREBUILT_KERNEL := device/huawei/c8813/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Additional config
RECOVERY_NAME := ClockworkMod Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/c8813/include/bluetooth

# WIFI
