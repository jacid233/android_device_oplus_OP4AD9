# Inherit from the proprietary version
-include vendor/oppo/OP4AD9/BoardConfigVendor.mk

BOARD_VENDOR := oppo
DEVICE_PATH := device/oppo/OP4AD9

BUILD_BROKEN_DUP_RULES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := OP4AD9

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
TARGET_USE_QTI_BT_STACK := false

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := kona
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image

BOARD_BOOT_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

TARGET_KERNEL_SOURCE := kernel/oppo/sm8250

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_CMDLINE += cgroup.memory=nokmem,nosocket
BOARD_KERNEL_CMDLINE += earlycon=msm_geni_serial,0xa90000
BOARD_KERNEL_CMDLINE += kpti=off
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += reboot=panic_warm
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=2048
BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

ifeq ($(TARGET_USES_OSS_KERNEL), true)
TARGET_KERNEL_CONFIG := vendor/kona-op4ad9_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-r383902
else 
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := device/oppo/prebuilt-kernel/kernel
TARGET_KERNEL_CONFIG := vendor/kona-op4ad9_defconfig
endif

# prebuilt-DTB
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTBIMAGE_DIR := device/oppo/prebuilt-kernel/dtb

# prebuilt dtbo.img
BOARD_PREBUILT_DTBOIMAGE := device/oppo/prebuilt-kernel/dtbo.img

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# Display
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.oppo_OP4A79

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(DEVICE_PATH)/framework_manifest.xml

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_CACHEIMAGE_PARTITION_SIZE := 469762048
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728

BOARD_SUPER_PARTITION_SIZE := 9932111872
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 9927917568 # (BOARD_SUPER_PARTITION_SIZE - 4 * 1024 * 1024)

BOARD_USES_METADATA_PARTITION := true
BOARD_USES_PRODUCTIMAGE := true
BUILD_WITHOUT_VENDOR := true

BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Power
TARGET_USES_INTERACTION_BOOST := true
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/double_tap_enable"

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := kona

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/properties/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/properties/system_ext.prop

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# Sepolicy
include device/qcom/sepolicy/SEPolicy.mk
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# VINTF
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/configs/vintf/compatibility_matrix.device.xml

# VNDK
BOARD_VNDK_VERSION := current

# Inherit from the proprietary version
include vendor/oppo/OP4AD9/BoardConfigVendor.mk
