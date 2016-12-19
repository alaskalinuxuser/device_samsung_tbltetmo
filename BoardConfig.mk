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

# TW_THEME  must be landscape_hdpi landscape_mdpi portrait_hdpi portrait_mdpi watch_mdpi
TW_THEME := portrait_hdpi

# inherit from common tblte
-include device/samsung/tblte-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := tbltetmo,tbltecan

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_tblte_tmo_defconfig

# Init
#TARGET_INIT_VENDOR_LIB := libinit_msm
#TARGET_LIBINIT_DEFINES_FILE := device/samsung/tbltetmo/init/init_tblte.c
#TARGET_UNIFIED_DEVICE := true

# Radio
BOARD_RIL_CLASS := ../../../device/samsung/tbltetmo/ril

# inherit from the proprietary version
-include vendor/samsung/tbltetmo/BoardConfigVendor.mk
