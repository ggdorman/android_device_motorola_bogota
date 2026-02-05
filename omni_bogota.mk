#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from bogota device
$(call inherit-product, device/motorola/bogota/device.mk)

PRODUCT_DEVICE := bogota
PRODUCT_NAME := omni_bogota
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g73 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bogota_g_vext-user 12 V2VOS35.66-108-2 acb6a release-keys"

BUILD_FINGERPRINT := motorola/bogota_g_vext/bogota:12/V2VOS35.66-108-2/acb6a:user/release-keys
