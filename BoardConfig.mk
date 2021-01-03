#
# Copyright (C) 2021 The LineageOS Project
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

DEVICE_PATH := device/xiaomi/merlin

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6768
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# DPI
TARGET_SCREEN_DENSITY := 440

# Platform
TARGET_BOARD_PLATFORM := mt6768

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Kernel
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_BOOT_HEADER_VERSION := 2
BOARD_RAMDISK_OFFSET := 0x07c08000
BOARD_KERNEL_TAGS_OFFSET := 0x0bc08000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_SECOND_OFFSET := 0x00e88000
BOARD_DTB_OFFSET := 0x0bc08000
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/xiaomi/mt6768
TARGET_KERNEL_CONFIG := merlin_defconfig
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := r353983c
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 114601984000
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 16777216
TARGET_USERIMAGES_USE_EXT4 := true

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 6012043264
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_MAIN_SIZE := 6012043264
BOARD_MAIN_PARTITION_LIST := \
    product \
    system
BOARD_SUPER_PARTITION_ERROR_LIMIT := 6012043264

# Assert
TARGET_OTA_ASSERT_DEVICE := merlin,merlin_eea,merlinnfc

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Non-SAR on Android 10 means the presence of stage-1 ramdisk
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
BUILD_WITHOUT_VENDOR := true
BOARD_ROOT_EXTRA_FOLDERS += metadata
BOARD_USES_METADATA_PARTITION := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Sepolicy
TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true
BOARD_PLAT_PRIVATE_SEPOLICY_DIR := $(DEVICE_PATH)/sepolicy/private

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6768
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
