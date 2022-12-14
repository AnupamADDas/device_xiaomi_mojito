#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/mojito

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true
BUILD_BROKEN_DUP_RULES := true

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_mojito
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_mojito

# Kernel
TARGET_KERNEL_CONFIG := mojito_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/mojito

# OTA assert
TARGET_OTA_ASSERT_DEVICE := mojito|sunny

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from sm6150-common
include device/xiaomi/sm6150-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/mojito/BoardConfigVendor.mk
