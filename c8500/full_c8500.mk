# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for toro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and toro, hence its name.
#

# Camera
PRODUCT_PACKAGES := \
    Camera

# Inherit from those products. Most specific first.
$(call inherit-product, device/huawei/products/full_base.mk)
$(call inherit-product, device/huawei/products/common.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
# Inherit from tuna device
$(call inherit-product, device/huawei/c8500/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_c8500
PRODUCT_DEVICE := c8500
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := C8500
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=huawei_c8500 BUILD_ID=JOEYJIAO BUILD_DISPLAY_ID=JOEYJIAO BUILD_FINGERPRINT=ICS4.0 PRIVATE_BUILD_DESC="ICS4.0 by JOEY JIAO"