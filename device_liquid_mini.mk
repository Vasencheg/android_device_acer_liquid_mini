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

DEVICE_PACKAGE_OVERLAYS += device/acer/liquid_mini/overlay

PRODUCT_PACKAGES += \
    libcamera \
    gps.liquid_mini \
    copybit.msm7k \
    gralloc.liquid_mini \
    libmm-omxcore \
    libOmxVidEnc \
    libOmxCore \
    bash

# Packages
PRODUCT_PACKAGES += \
    Gallery3d \
    SpareParts \
    Development \
    Term \
    FM \
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
    device/acer/liquid_mini/recovery/root/etc/setupenv.sh:recovery/root/etc/setupenv.sh

# Board-specific init
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/root/init.qcom.rc:root/init.qcom.rc \
    device/acer/liquid_mini/root/init.qcom.sh:root/init.qcom.sh \
    device/acer/liquid_mini/root/init.rc:root/init.rc \
    device/acer/liquid_mini/root/initlogo.rle:root/initlogo.rle\
    device/acer/liquid_mini/root/ueventd.rc:root/ueventd.rc \
    device/acer/liquid_mini/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/acer/liquid_mini/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh

# bin
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/system/bin/battery_charging:system/bin/battery_charging \
    device/acer/liquid_mini/system/bin/cciclean:system/bin/cciclean \
    device/acer/liquid_mini/system/bin/ccidag:system/bin/ccidag \
    device/acer/liquid_mini/system/bin/ccidevd:system/bin/ccidevd \
    device/acer/liquid_mini/system/bin/ccieuu:system/bin/ccieuu \
    device/acer/liquid_mini/system/bin/ccihwid:system/bin/ccihwid \
    device/acer/liquid_mini/system/bin/cci-props:system/bin/cci-props \
    device/acer/liquid_mini/system/bin/CKPD-daemon:system/bin/CKPD-daemon \
    device/acer/liquid_mini/system/bin/cnd:system/bin/cnd \
    device/acer/liquid_mini/system/bin/diag_klog:system/bin/diag_klog \
    device/acer/liquid_mini/system/bin/diag_mdlog:system/bin/diag_mdlog \
    device/acer/liquid_mini/system/bin/ds_fmc_appd:system/bin/ds_fmc_appd \
    device/acer/liquid_mini/system/bin/fmfc:system/bin/fmfc \
    device/acer/liquid_mini/system/bin/fmsvc:system/bin/fmsvc \
    device/acer/liquid_mini/system/bin/geomagneticd:system/bin/geomagneticd \
    device/acer/liquid_mini/system/bin/hostapd:system/bin/hostapd \
    device/acer/liquid_mini/system/bin/hostapd_cli:system/bin/hostapd_cli \
    device/acer/liquid_mini/system/bin/netmgrd:system/bin/netmgrd \
    device/acer/liquid_mini/system/bin/orientationd:system/bin/orientationd \
    device/acer/liquid_mini/system/bin/port-bridge:system/bin/port-bridge \
    device/acer/liquid_mini/system/bin/rmt_storage:system/bin/rmt_storage \
    device/acer/liquid_mini/system/bin/storage_keeper:system/bin/storage_keeper \
    device/acer/liquid_mini/system/bin/su:system/bin/su \
    device/acer/liquid_mini/system/bin/usbhub:system/bin/usbhub \
    device/acer/liquid_mini/system/bin/usbhub_init:system/bin/usbhub_init \
    device/acer/liquid_mini/system/bin/wlan_addr:system/bin/wlan_addr \
    device/acer/liquid_mini/system/bin/wpa_supplicant:system/bin/wpa_supplicant \
    device/acer/liquid_mini/system/bin/writefile:system/bin/writefile

# SD Card
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/system/etc/vold.fstab:system/etc/vold.fstab

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/system/etc/gps.conf:system/etc/gps.conf

# misc
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/system/etc/01_qcomm_omx.cfg:system/etc/01_qcomm_omx.cfg \
    device/acer/liquid_mini/system/etc/an32155a.cfg:system/etc/an32155a.cfg \
    device/acer/liquid_mini/system/etc/cci-flex.sh:system/etc/cci-flex.sh \
    device/acer/liquid_mini/system/etc/pvplayer.cfg:system/etc/pvplayer.cfg \
    device/acer/liquid_mini/system/etc/rtecdc.bin:system/etc/rtecdc.bin \
    device/acer/liquid_mini/system/etc/rtecdc_ap.bin:system/etc/rtecdc_ap.bin \
    device/acer/liquid_mini/system/etc/rtecdc_wapi.bin:system/etc/rtecdc_wapi.bin \
    device/acer/liquid_mini/system/etc/voVidDec.dat:system/etc/voVidDec.dat \
    device/acer/liquid_mini/system/etc/vommcodec.cfg:system/etc/vommcodec.cfg \
    device/acer/liquid_mini/system/etc/vosfPlay.cfg:system/etc/vosfPlay.cfg \
    device/acer/liquid_mini/system/ts.conf:system/ts.conf \
    device/acer/liquid_mini/system/usr/keychars/surf_keypad.kcm.bin:system/usr/keychars/surf_keypad.kcm.bin \
    device/acer/liquid_mini/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/acer/liquid_mini/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# audio
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# wifi
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/system/etc/nvram.txt:system/etc/nvram.txt \
    device/acer/liquid_mini/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/acer/liquid_mini/system/lib/modules/bcm4329.ko:system/lib/modules/bcm4329.ko

# bluetooth
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/system/etc/bt_fw.hcd:system/etc/bt_fw.hcd \
    device/acer/liquid_mini/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/acer/liquid_mini/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/acer/liquid_mini/system/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
    device/acer/liquid_mini/system/etc/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
    device/acer/liquid_mini/system/etc/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
    device/acer/liquid_mini/system/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
    device/acer/liquid_mini/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf

# fm
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh

# permissions
PRODUCT_COPY_FILES += \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    device/acer/liquid_mini/system/etc/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    device/acer/liquid_mini/system/etc/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    device/acer/liquid_mini/system/etc/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    device/acer/liquid_mini/system/etc/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    device/acer/liquid_mini/system/etc/permissions/com.acer.android.os.xml:system/etc/permissions/com.acer.android.os.xml \
    device/acer/liquid_mini/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    device/acer/liquid_mini/system/etc/permissions/com.qualcomm.location.vzw_library.xml:system/etc/permissions/com.qualcomm.location.vzw_library.xml \
    device/acer/liquid_mini/system/etc/permissions/platform.xml:system/etc/permissions/platform.xml

# boot animation
PRODUCT_COPY_FILES +=  \
    device/acer/liquid_mini/media/bootanimation.zip:system/media/bootanimation.zip

# Inherit some common cyanogenmod stuff.
#$(call inherit-product, vendor/cyanogen/products/common_full.mk)
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Include FM-Radio stuff
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

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

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.ril.disable.power.collapse=0 \
    ro.ril.def.agps.mode = 2 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.media.dec.jpeg.memcap=20000000 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.heapsize=32m \
    dalvik.vm.execution-mode=int:jit \
    dalvik.vm.dexopt-data-only=1 \
    ro.opengles.version=131072  \
    ro.compcache.default=0


# We want Russian on top of small_languages
PRODUCT_LOCALES += ru_RU
PRODUCT_DEFAULT_LANGUAGE := en_GB

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
