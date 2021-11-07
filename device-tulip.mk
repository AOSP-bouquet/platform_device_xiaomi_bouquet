#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# PRODUCT_SHIPPING_API_LEVEL indicates the first api level, device has been commercially launched on.
PRODUCT_SHIPPING_API_LEVEL := 27

# Inherit from sdm660-common
$(call inherit-product, device/xiaomi/sdm660-common/device-common.mk)

LOCAL_PATH := device/xiaomi/sdm660-common

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Inherit properties.mk
$(call inherit-product, $(LOCAL_PATH)/tulip/properties.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/tulip/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/tulip/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/tulip/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/tulip/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# Consumerir
BOARD_HAVE_IR := true

# Display calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/tulip/qdcm_calib_data_boe_ft8719_fhdplus_video_mode_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_boe_ft8719_fhdplus_video_mode_dsi_panel.xml \
    $(LOCAL_PATH)/tulip/qdcm_calib_data_shenchao_nt36672a_fhdplus_video_mode_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_shenchao_nt36672a_fhdplus_video_mode_dsi_panel.xml \
    $(LOCAL_PATH)/tulip/qdcm_calib_data_tianma_nt36672a_fhdplus_video_mode_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_tianma_nt36672a_fhdplus_video_mode_dsi_panel.xml

# Kernel
LOCAL_KERNEL := device/xiaomi/sdm660-kernel/tulip/Image.gz-dtb

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/tulip/overlay

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Powerhint
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/powerhint_sdm636.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/tulip/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom \
    $(LOCAL_PATH)/tulip/init.tulip.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.device.rc

# Shims
PRODUCT_PACKAGES += \
    libcamera_sdm660_shim

# Wifi
PRODUCT_PACKAGES += \
    TulipWifiOverlay

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/tulip/tulip-vendor.mk)
