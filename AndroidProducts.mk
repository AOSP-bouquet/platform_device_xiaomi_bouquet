#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_whyred.mk \
    $(LOCAL_DIR)/aosp_tulip.mk

COMMON_LUNCH_CHOICES := \
    aosp_whyred-eng \
    aosp_whyred-user \
    aosp_whyred-userdebug \
    aosp_tulip-eng \
    aosp_tulip-user \
    aosp_tulip-userdebug
