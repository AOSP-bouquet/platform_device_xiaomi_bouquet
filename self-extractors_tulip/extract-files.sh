#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib/hw/camera.sdm660.so)
            for LIBCAMERA_SDM660_SHIM in $(grep -L "libcamera_sdm660_shim.so" "${2}"); do
                "${PATCHELF}" --add-needed "libcamera_sdm660_shim.so" "$LIBCAMERA_SDM660_SHIM"
            done
            ;;
        # Use VNDK 32 libhidlbase
        vendor/lib64/libvendor.goodix.hardware.biometrics.fingerprint@2.1.so)
            "${PATCHELF}" --remove-needed "libhidlbase.so" "${2}"
            sed -i "s/libhidltransport.so/libhidlbase-v32.so\x00/" "${2}"
           ;;
        vendor/lib64/com.fingerprints.extension@1.0.so)
            "${PATCHELF_0_8}" --remove-needed "libhidlbase.so" "${2}"
            sed -i "s/libhidltransport.so/libhidlbase-v32.so\x00/" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=tulip
export DEVICE_COMMON=bouquet
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/self-extractors/extract-files.sh" "$@"
