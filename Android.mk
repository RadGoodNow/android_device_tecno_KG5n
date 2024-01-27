LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),KG5n)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif