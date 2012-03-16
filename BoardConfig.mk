# inherit from the proprietary version
-include vendor/acer/liquid_mini/BoardConfigVendor.mk


TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOOTLOADER_BOARD_NAME := liquid_mini

TARGET_OTA_ASSERT_DEVICE := liquid_mini

# EGL
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_EGL_CFG := device/acer/liquid_mini/system/lib/egl/egl.cfg
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x2e00000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/acer/liquid_mini/kernel

# RECOVERY
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x004c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08220000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0b380000
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_PREBUILT_RECOVERY_KERNEL := device/acer/liquid_mini/recovery_kernel
TARGET_RECOVERY_INITRC := device/acer/liquid_mini/recovery/root/recovery.rc
BOARD_RECOVERY_ALWAYS_WIPES := false
#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true

# RIL
TARGET_PROVIDES_LIBRIL := true

# FM
BOARD_FM_DEVICE := bcm4325
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Releasetools
#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/acer/liquid_mini/releasetools/liquid_mini_ota_from_target_files
#TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/acer/liquid_mini/releasetools/liquid_mini_img_from_target_files

#QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# WIFI defines
#BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#WPA_SUPPLICANT_VERSION := VER_0_6_X
#WIFI_DRIVER_FW_STA_PATH := "/vendor/firmware/fw_bcm4329.bin"
#WIFI_DRIVER_FW_AP_PATH := "/vendor/firmware/fw_bcm4329_apsta.bin"
#BOARD_WLAN_DEVICE := bcm4329
#WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcm4329.ko"
#WIFI_DRIVER_MODULE_ARG := "firmware_path=/vendor/firmware/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram_net.txt dhd_watchdog_ms=10 dhd_poll=1"
#WIFI_DRIVER_MODULE_NAME := "bcm4329"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS HAL
#BOARD_USES_QCOM_GPS := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := liquid_mini
# AMSS version to use for GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Camera
USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true
#BOARD_CAMERA_USE_GETBUFFERINFO := true
#BOARD_USE_CAF_LIBCAMERA := true


TARGET_SPECIFIC_HEADER_PATH := device/acer/liquid_mini/include
