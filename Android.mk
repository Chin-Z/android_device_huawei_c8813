LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),c8813)
    include $(call first-makefiles-under,$(LOCAL_PATH))
endif
