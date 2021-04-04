#
# Copyright (C) 2020 AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/realme/RMX2081

# Release name
PRODUCT_RELEASE_NAME := RMX2081

#Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from PitchBlack
$(call inherit-product, vendor/pb/config/common.mk)

# Dynamic Partition
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root,recovery/root) \
	$(LOCAL_PATH)/prebuilt/dtb:dtb.img

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX2081
PRODUCT_NAME := omni_RMX2081
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme x3
PRODUCT_MANUFACTURER := realme
