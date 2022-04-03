#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from bouquet
$(call inherit-product, device/xiaomi/bouquet/device-common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/tulip/overlay

PRODUCT_PACKAGES += \
    NoCutoutOverlayTulip

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/twolip/twolip-vendor.mk)
