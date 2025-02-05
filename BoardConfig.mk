#
# Copyright (C) 2020 Android Open Source Project
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

DEVICE_PATH := device/samsung/a10s

#Assert
TARGET_OTA_ASSERT_DEVICE := a10s

#Build
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := Cortex-a53
TARGET_CPU_VARIANT_RUNTIME := Cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# APEX
OVERRIDE_TARGET_FLATTEN_APEX := true

# Bootloader
TARGET_BOARD_PLATFORM := mt6765
TARGET_BOOTLOADER_BOARD_NAME := S96116AA1
TARGET_NO_BOOTLOADER := true

#Build
BUILD_BROKEN_DUP_RULES := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery

BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x07808000
BOARD_RAMDISK_OFFSET := 0x11a88000
BOARD_KERNEL_SECOND_OFFSET := 0x00e88000
BOARD_DTB_OFFSET := 0x07808000

BOARD_BOOT_HEADER_VERSION := 2

TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel.gz
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb.img
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CONFIG := a10s_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a10s
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := r353983c1
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel.gz
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
endif

# Metadata
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 6853492736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 118388391936
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BUILD_WITHOUT_VENDOR := true
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := system/product

TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6765
TARGET_RECOVERY_UI_BLANK_UNBLANK_ON_INIT := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Sepolicy
TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true
BOARD_PLAT_PRIVATE_SEPOLICY_DIR := $(DEVICE_PATH)/sepolicy/private
SELINUX_IGNORE_NEVERALLOWS := true

# Treble
BOARD_VNDK_VERSION := current
TARGET_COPY_OUT_PRODUCT := system/product

#DPI
TARGET_SCREEN_DENSITY := 423

