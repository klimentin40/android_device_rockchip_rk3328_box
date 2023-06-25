#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-produc-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from TWRP-common stuffs.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from the Device Tree itself.
$(call inherit-product, device/rockchip/rk3328_box/device.mk)

PRODUCT_DEVICE := rk3328_box
PRODUCT_NAME := twrp_rk3328_box
PRODUCT_BRAND := Rockchip
PRODUCT_MODEL := H96_Max_V12
PRODUCT_MANUFACTURER := rockchip

PRODUCT_GMS_CLIENTID_BASE := android-rockchip-tv

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3328_box-userdebug 12 SQ3A.220605.009.B1 eng.pc.20221117.145212 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:12/SP1A.210812.015/7679548:user/release-keys__2021-10-05
