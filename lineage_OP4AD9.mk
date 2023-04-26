#
# Copyright (C) 2020 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := OPPO
PRODUCT_DEVICE := OP4AD9
PRODUCT_MANUFACTURER := OPPO
PRODUCT_NAME := lineage_OP4AD9
PRODUCT_MODEL := PDHM00

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := PDHM00

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="PDHM00-user 11 RKQ1.200710.002 1614141791981 release-keys"

BUILD_FINGERPRINT := OPPO/PDHM00/OP4AD9:11/RKQ1.200710.002/1614141791981:user/release-keys
