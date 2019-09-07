#
# Copyright (C) 2018-2019 The Pixel3ROM Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from custom mainline config
$(call inherit-product, vendor/google/build/target/product/mainline.mk)

$(call inherit-product, vendor/google/product/dipper/device.mk)
$(call inherit-product-if-exists, vendor/xiaomi/dipper/dipper-vendor.mk)
$(call inherit-product-if-exists, vendor/xiaomi/sdm845-common/sdm845-common-vendor.mk)

# STOPSHIP deal with Qualcomm stuff later
# PRODUCT_RESTRICT_VENDOR_FILES := all

# Set real device info
PRODUCT_NAME := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_DEVICE := dipper
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false

# Inherit from Google common config
$(call inherit-product, vendor/google/config/common.mk)

# GMS
$(call inherit-product-if-exists, vendor/gms/gms_full.mk)
