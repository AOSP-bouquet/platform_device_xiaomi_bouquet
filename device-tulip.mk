#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from bouquet
$(call inherit-product, device/xiaomi/bouquet/device-common.mk)

LOCAL_PATH := device/xiaomi/bouquet

# Camera
PRODUCT_PACKAGES += \
    libcamera_shim

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayTulip \
    NoCutoutOverlayTulip \
    SystemUIOverlayTulip

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.keymaster@3.0.vendor

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/tulip/tulip-vendor.mk)
