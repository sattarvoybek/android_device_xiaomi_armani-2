# Copyright (C) 2014 OmniROM Project
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

# Inherit APNs list
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/armani/device.mk)

PRODUCT_NAME := omni_armani
PRODUCT_DEVICE := armani
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 1S
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="4.3/JLS36C/JHCMYBD27.0:user/release-keys" \
    PRIVATE_BUILD_DESC="armani-user 4.3 JLS36C JHCMYBD27.0 release-keys"

# Kernel inline build
TARGET_KERNEL_SOURCE := kernel/xiaomi/armani
TARGET_KERNEL_CONFIG := cyanogenmod_armani_defconfig

#$(call inherit-product-if-exists, vendor/xiaomi/armani/armani-vendor.mk)
