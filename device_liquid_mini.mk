#
# Copyright (C) 2008 The Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/small_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/acer/liquid_mini/liquid_mini-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/acer/liquid_mini/overlay

$(call inherit-product, device/acer/liquid_mini/liquid_mini.mk)

# Inherit some common cyanogenmod stuff.
#$(call inherit-product, vendor/cyanogen/products/common_full.mk)
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_BRAND := AdvantageMX
PRODUCT_NAME := amx_liquid_mini
PRODUCT_DEVICE := liquid_mini
PRODUCT_MANUFACTURER := Acer
PRODUCT_MODEL := E310

# Release name and versioning
PRODUCT_RELEASE_NAME := LiquidMini
PRODUCT_VERSION_DEVICE_SPECIFIC := _AdvantageMX_
-include vendor/cyanogen/products/common_versions.mk
