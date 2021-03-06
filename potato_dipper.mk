#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/dipper/device.mk)

# Inherit some common POSP stuff.
$(call inherit-product, vendor/potato/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := potato_dipper
PRODUCT_DEVICE := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/polaris/polaris:8.0.0/OPR1.170623.032/V9.5.19.0.ODGMIFA:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEACNFA release-keys" \
    PRODUCT_NAME="dipper" \
    TARGET_DEVICE="dipper"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi-rev1
