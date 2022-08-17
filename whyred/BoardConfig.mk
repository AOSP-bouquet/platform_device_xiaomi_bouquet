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

# Security patch level
VENDOR_SECURITY_PATCH := 2018-11-01

# Inherit the proprietary files
include vendor/xiaomi/whyred/BoardConfigVendor.mk
