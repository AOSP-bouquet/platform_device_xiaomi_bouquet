#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

#
# All components inherited here go to system image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/mainline_system.mk)

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

#
# All components inherited here go to vendor image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

# Inherit some common HentaiOS stuff
$(call inherit-product, vendor/hentai/build/product/hentai_product.mk)

# Inherit from tulip device
$(call inherit-product, $(LOCAL_PATH)/device-tulip.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := tulip
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := hentai_tulip
PRODUCT_MODEL := Redmi Note 6 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := tulip
