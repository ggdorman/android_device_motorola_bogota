#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/base_system.mk)

LOCAL_PATH := device/motorola/bogota

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# VENDOR BOOT + VirtualAB Recovery
PRODUCT_PACKAGES += \
    bootctrl.mt6855 \
    bootctrl.mt6855.recovery \
    libgptutils \
    fsck.exfat \
    recovery \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    dtb.img \
    kernel \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img
