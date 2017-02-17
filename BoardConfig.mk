# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common tblte
-include device/samsung/tblte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := tbltetmo,tbltecan

# Camera
TARGET_FIXUP_PREVIEW := true 

# Kernel
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
#TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_tblte_eur_defconfig
TARGET_KERNEL_VARIANT_CONFIG := aklu_sec_tblte_eur_defconfig
BOARD_BOOTIMAGE_PARTITION_SIZE := 17825792
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := 199229440
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3774873600 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27019685888
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200

# Init
TARGET_INIT_VENDOR_LIB := libinit_tblte
TARGET_UNIFIED_DEVICE := true

# inherit from the proprietary version
-include vendor/samsung/tbltetmo/BoardConfigVendor.mk

#TWRP specific build flags
TW_IGNORE_MISC_WIPE_DATA := true
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 140
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_EXFAT_FUSE := true
TW_NO_EXFAT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_SUPERSU := true
TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_JPEG := true
TW_TARGET_USES_QCOM_BSP := false
TW_USE_TOOLBOX := true
TWHAVE_SELINUX := true
