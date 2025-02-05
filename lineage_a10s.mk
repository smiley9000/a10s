#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
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

# Inherit from device makefile
$(call inherit-product, device/samsung/a10s/device.mk)

# Inherit some common stuff.
TARGET_BOOT_ANIMATION_RES := 720
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a10s
PRODUCT_DEVICE := a10s
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy A10s
PRODUCT_MANUFACTURER := Samsung

# Build info
BUILD_FINGERPRINT := "samsung/a10sxx/a10s:11/RP1A.200720.012/A107FXXS8CWD3:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=a10s \
    PRODUCT_NAME=a10s \
    PRIVATE_BUILD_DESC="a10sxx-user 11 RP1A.200720.012 A107FXXS8CWD3 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true
