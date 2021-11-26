#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from bouquet-common
include device/xiaomi/bouquet/BoardConfig-common.mk

LOCAL_PATH := device/xiaomi/bouquet/whyred

# AVB
BOARD_AVB_ENABLE := false

# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Display
TARGET_SCREEN_DENSITY := 440

# Manifest
DEVICE_MANIFEST_FILE += $(LOCAL_PATH)/manifest_whyred.xml

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 838860800

# Properties
TARGET_VENDOR_PROP += $(LOCAL_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/fstab.qcom

# Security patch level
VENDOR_SECURITY_PATCH := 2018-11-01

# Inherit the proprietary files
include vendor/xiaomi/whyred/BoardConfigVendor.mk
