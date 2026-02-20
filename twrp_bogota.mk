#
# Copyright (C) 2026 The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/motorola/bogota/device.mk)

PRODUCT_DEVICE := bogota
PRODUCT_NAME := twrp_bogota
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g56 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="bogota_g_vext-user 12 V2VOS35.66-108-2 acb6a release-keys"

BUILD_FINGERPRINT := motorola/bogota_g_vext/bogota:12/V2VOS35.66-108-2/acb6a:user/release-keys
