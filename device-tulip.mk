#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# PRODUCT_SHIPPING_API_LEVEL indicates the first api level, device has been commercially launched on.
PRODUCT_SHIPPING_API_LEVEL := 27

# Inherit from bouquet
$(call inherit-product, device/xiaomi/bouquet/device-common.mk)

LOCAL_PATH := device/xiaomi/bouquet

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayTulip \
    NoCutoutOverlayTulip \
    SystemUIGoogleTulip

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.keymaster@3.0.vendor

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/tulip/tulip-vendor.mk)
