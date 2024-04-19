#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from X695C device
$(call inherit-product, device/infinix/X695C/device.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X695C
PRODUCT_NAME := omni_X695C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Note 10 Pro
PRODUCT_MANUFACTURER := Infinix
PRODUCT_RELEASE_NAME := Infinix Note 10 Pro