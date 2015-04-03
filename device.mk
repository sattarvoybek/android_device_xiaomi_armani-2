# Copyright 2015 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := device/xiaomi/armani/overlay

LOCAL_PATH := device/xiaomi/armani

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/fstab.armani:root/fstab.armani \
    $(LOCAL_PATH)/configs/ueventd.armani.rc:root/ueventd.armani.rc \
    $(LOCAL_PATH)/configs/init.armani.rc:root/init.armani.rc \
    $(LOCAL_PATH)/configs/init.xiaomi.usb.rc:root/init.xiaomi.usb.rc \
    $(LOCAL_PATH)/configs/twrp.fstab:recovery/root/etc/twrp.fstab

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/ft5x06.kl:system/usr/keylayout/ft5x06.kl \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/msm8226-tapan-snd-card_Button_Jack.kl:system/usr/keylayout/msm8226-tapan-snd-card_Button_Jack.kl

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media_paths.xml:system/etc/media_paths.xml

# Copy extra files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

#Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8226 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libacdbloader \
    libacdbmapper \
    libaudcal \
    libaudioalsa \
    libdiag

# for audio.primary.msm8226
PRODUCT_PACKAGES += \
    libtinyalsa \
    libtinycompress \
    libaudioroute

#GFX
PRODUCT_PACKAGES += \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226 \
    libgenlock \
    libqdutils \
    libqdMetaData

#lights
PRODUCT_PACKAGES += \
    lights.armani

#GPS
PRODUCT_PACKAGES += \
    libloc_api_v02 \
    libloc_adapter \
    libloc_eng \
    libgps.utils \
    gps.msm8226

#Wifi
PRODUCT_PACKAGES += \
    hostapd \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

#Misc
PRODUCT_PACKAGES += \
    rmt_storage

#Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8226

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Platform specific properties
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.bt.hci_transport=smd

$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
