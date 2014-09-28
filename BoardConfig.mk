# Copyright (C) 2011 The Android Open Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/mediatek/wiko/BoardConfigVendor.mk


LOCAL_FOLDER := device/mediatek/wiko

PREBUILT_FOLDER := $(LOCAL_FOLDER)/prebuilt


#We should use the current kernel until we can provide some more information when build
#TARGET_PREBUILT_KERNEL := $(PREBUILT_FOLDER)/kernel
TARGET_KERNEL_SOURCE := kernel/mediatek/wiko
TARGET_KERNEL_CONFIG := mediatek-configs
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-linux-androideabi-4.4.x
TARGET_KERNEL_CUSTOM_TOOLCHAIN_BIN := arm-linux-androideabi-
TARGET_KERNEL_PROVIDES_BUILD_COMMANDS := kernel/mediatek/wiko/wiko.mk
NEEDS_KERNEL_COPY := true

#we need special init.rc because of the sec.ko module to be loaded
TARGET_RECOVERY_INITRC := $(LOCAL_FOLDER)/recovery/init.rc

KERNEL_MAKE_PARAMETERS := TARGET_PRODUCT=wiko MTK_ROOT_CUSTOM=mediatek/custom 

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_FOLDER)/include

TARGET_BOARD_PLATFORM := mt6592

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_NEON := true
BOARD_KERNEL_PAGESIZE := 2048
BOARD_FLASH_BLOCK_SIZE := 512
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
COMMON_GLOBAL_CFLAGS += -DMR1_AUDIO_BLOB -DDISABLE_HW_ID_MATCH_CHECK -DNEEDS_VECTORIMPL_SYMBOLS
PRODUCT_AAPT_PREF_CONFIG := hdpi

#STUFF I KNOW
#We need to use mediatek RIL libs
#We will have to provide a wrapper around the default mtril
BOARD_PROVIDES_LIBRIL := true
BOARD_PROVIDES_RILD := true
BOARD_NO_REFERENCE_RIL := true
BOARD_NO_MOCK_RIL := true

#STUFF NOT SURE AT ALL
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_USES_GENERIC_AUDIO := false

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := mali-450

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp


BOARD_CONFIG_DIR := $(LOCAL_FOLDER)/config

#Graphics
BOARD_EGL_CFG := $(BOARD_CONFIG_DIR)/egl.cfg
USE_OPENGL_RENDERER := true

#Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true


# TARGET_BOARD_PLATFORM := unknown
# TARGET_BOOTLOADER_BOARD_NAME := wiko


BOARD_DISABLE_FMRADIO_TRANSMITTER_TEST := true

### TODO AND TO CHECK
BOARD_KERNEL_CMDLINE := 
# Checked in sysinfo
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_FOLDER)/custom_bootimg.mk


#TODO CHECK
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
ARCH_ARM_HAVE_ARMV7A_BUG := true

#WIFI STUFF FROM Wiko configuration file
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_P2P_SUPPLICANT_DRIVER := NL80211
HAVE_CUSTOM_WIFI_DRIVER_2 := true
HAVE_INTERNAL_WPA_SUPPLICANT_CONF := true
HAVE_CUSTOM_WIFI_HAL := mediatek
WPA_SUPPLICANT_VERSION := VER_0_6_X
P2P_SUPPLICANT_VERSION := VER_0_8_X

#SOME OTHER STUFF TO ADD
# Sensors
#SOMC_CFG_DASH_INCLUDED := yes
#SENSORS_COMPASS_AK8973 := true
#SENSORS_ACCEL_BMA150_INPUT := true
#SENSORS_ACCEL_BMA250_INPUT := false
#SENSORS_PROXIMITY_APDS9120 := true
#SENSORS_PRESSURE_BMP180 := false

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true


BOARD_PROTECT_FIMAGE_PARTITION_SIZE:=10485760
BOARD_PROTECT_SIMAGE_PARTITION_SIZE:=10485760
BOARD_SECROIMAGE_PARTITION_SIZE:=6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=1895825408
BOARD_CACHEIMAGE_PARTITION_SIZE:=134217728
BOARD_USERDATAIMAGE_PARTITION_SIZE:=10736369664
BOARD_FATIMAGE_PARTITION_SIZE:=0
