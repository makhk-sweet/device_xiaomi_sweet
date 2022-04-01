#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common AEX configurations.
$(call inherit-product, vendor/aosp/common.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_sweet

PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# AEX - Go Official
EXTENDED_BUILD_TYPE := OFFICIAL

# Build with GApps if GAPPS_BUILD is true
ifeq ($(GAPPS_BUILD),true)
    WITH_GMS := true
    WITH_GAPPS := true
    TARGET_GAPPS_ARCH := arm64
    IS_PHONE := true
    TARGET_SHIPS_SEPERATE_GAPPS_BUILD := true
endif
