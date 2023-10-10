#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2023 ZadliM
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from A90 device
$(call inherit-product, device/wheatek/A90/device.mk)

PRODUCT_DEVICE := A90
PRODUCT_NAME := twrp_A90
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := A90
PRODUCT_MANUFACTURER := wheatek

PRODUCT_GMS_CLIENTID_BASE := android-wheatek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="A90-user 11 RP1A.200720.011 1636437927 release-keys"

BUILD_FINGERPRINT := Blackview/A90/A90:11/RP1A.200720.011/1636437927:user/release-keys
