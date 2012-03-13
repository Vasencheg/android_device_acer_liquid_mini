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

$(call inherit-product-if-exists, vendor/acer/liquid_mini/liquid_mini-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    gps.liquid_mini \
    copybit.msm7k \
    gralloc.liquid_mini \
    libOmxCore

# Packages
PRODUCT_PACKAGES += \
    Gallery3d \
    SpareParts \
    Development \
    Term \
    VoiceDialer \
    CMWallpapers


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/acer/liquid_mini/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/setupenv.sh:recovery/root/etc/setupenv.sh

# Board-specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/root/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/root/initlogo.rle:root/initlogo.rle\
    $(LOCAL_PATH)/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh

# bin
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/bin/battery_charging:system/bin/battery_charging \
    $(LOCAL_PATH)/system/bin/cciclean:system/bin/cciclean \
    $(LOCAL_PATH)/system/bin/ccidag:system/bin/ccidag \
    $(LOCAL_PATH)/system/bin/ccidevd:system/bin/ccidevd \
    $(LOCAL_PATH)/system/bin/ccieuu:system/bin/ccieuu \
    $(LOCAL_PATH)/system/bin/ccihwid:system/bin/ccihwid \
    $(LOCAL_PATH)/system/bin/cci-props:system/bin/cci-props \
    $(LOCAL_PATH)/system/bin/CKPD-daemon:system/bin/CKPD-daemon \
    $(LOCAL_PATH)/system/bin/cnd:system/bin/cnd \
    $(LOCAL_PATH)/system/bin/diag_klog:system/bin/diag_klog \
    $(LOCAL_PATH)/system/bin/diag_mdlog:system/bin/diag_mdlog \
    $(LOCAL_PATH)/system/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    $(LOCAL_PATH)/system/bin/fmfc:system/bin/fmfc \
    $(LOCAL_PATH)/system/bin/fmsvc:system/bin/fmsvc \
    $(LOCAL_PATH)/system/bin/geomagneticd:system/bin/geomagneticd \
    $(LOCAL_PATH)/system/bin/hostapd:system/bin/hostapd \
    $(LOCAL_PATH)/system/bin/hostapd_cli:system/bin/hostapd_cli \
    $(LOCAL_PATH)/system/bin/netmgrd:system/bin/netmgrd \
    $(LOCAL_PATH)/system/bin/orientationd:system/bin/orientationd \
    $(LOCAL_PATH)/system/bin/port-bridge:system/bin/port-bridge \
    $(LOCAL_PATH)/system/bin/rmt_storage:system/bin/rmt_storage \
    $(LOCAL_PATH)/system/bin/storage_keeper:system/bin/storage_keeper \
    $(LOCAL_PATH)/system/bin/su:system/bin/su \
    $(LOCAL_PATH)/system/bin/usbhub:system/bin/usbhub \
    $(LOCAL_PATH)/system/bin/usbhub_init:system/bin/usbhub_init \
    $(LOCAL_PATH)/system/bin/wlan_addr:system/bin/wlan_addr \
    $(LOCAL_PATH)/system/bin/wpa_supplicant:system/bin/wpa_supplicant \
    $(LOCAL_PATH)/system/bin/writefile:system/bin/writefile

# SD Card
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/vold.fstab:system/etc/vold.fstab

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/gps.conf:system/etc/gps.conf

# misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    $(LOCAL_PATH)/system/etc/an32155a.cfg:system/etc/an32155a.cfg \
    $(LOCAL_PATH)/system/etc/cci-flex.sh:system/etc/cci-flex.sh \
    $(LOCAL_PATH)/system/etc/pvplayer.cfg:system/etc/pvplayer.cfg \
    $(LOCAL_PATH)/system/etc/rtecdc.bin:system/etc/rtecdc.bin \
    $(LOCAL_PATH)/system/etc/rtecdc_ap.bin:system/etc/rtecdc_ap.bin \
    $(LOCAL_PATH)/system/etc/rtecdc_wapi.bin:system/etc/rtecdc_wapi.bin \
    $(LOCAL_PATH)/system/etc/voVidDec.dat:system/etc/voVidDec.dat \
    $(LOCAL_PATH)/system/etc/vommcodec.cfg:system/etc/vommcodec.cfg \
    $(LOCAL_PATH)/system/etc/vosfPlay.cfg:system/etc/vosfPlay.cfg \
    $(LOCAL_PATH)/system/ts.conf:system/ts.conf \
    $(LOCAL_PATH)/system/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    $(LOCAL_PATH)/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/nvram.txt:system/etc/nvram.txt \
    $(LOCAL_PATH)/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/system/lib/modules/bcm4329.ko:system/lib/modules/bcm4329.ko

# bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/bt_fw.hcd:system/etc/bt_fw.hcd \
    $(LOCAL_PATH)/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/system/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
    $(LOCAL_PATH)/system/etc/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    $(LOCAL_PATH)/system/etc/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    $(LOCAL_PATH)/system/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
    $(LOCAL_PATH)/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf

# fm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh

# permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    $(LOCAL_PATH)/system/etc/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.acer.android.os.xml:system/etc/permissions/com.acer.android.os.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/system/etc/permissions/com.qualcomm.location.vzw_library.xml:system/etc/permissions/com.qualcomm.location.vzw_library.xml \
    $(LOCAL_PATH)/system/etc/permissions/platform.xml:system/etc/permissions/platform.xml

# boot animation
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip

# Inherit some common cyanogenmod stuff.
#$(call inherit-product, vendor/cyanogen/products/common_full.mk)
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)


PRODUCT_LOCALES += \
    ru_RU

# Screen density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

ifdef AMX_NIGHTLY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=advantagemxmod_nightly
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=advantagemxmod
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_BRAND := AdvantageMX
PRODUCT_NAME := amx_liquid_mini
PRODUCT_DEVICE := liquid_mini
PRODUCT_MANUFACTURER := Acer
PRODUCT_MODEL := E310

# Release name and versioning
PRODUCT_RELEASE_NAME := LiquidMini
PRODUCT_VERSION_DEVICE_SPECIFIC := AdvantageMX
-include vendor/cyanogen/products/common_versions.mk
