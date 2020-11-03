#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from bouquet
$(call inherit-product, device/xiaomi/bouquet/device-common.mk)

LOCAL_PATH := device/xiaomi/bouquet

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/tulip/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/tulip/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/tulip/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/tulip/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# Overlays
PRODUCT_PACKAGES += \
    FrameworkResOverlayTulip \
    NoCutoutOverlayTulip \
    SystemUIGoogleTulip

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor \
    android.hardware.keymaster@3.0.vendor

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/tulip/init.tulip.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.device.rc

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/tulip/tulip-vendor.mk)
