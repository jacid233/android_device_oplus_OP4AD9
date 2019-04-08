$(call inherit-product, vendor/oppo/OP4AD9/OP4AD9-vendor.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery init
PRODUCT_PACKAGES += \
	init.recovery.qcom.rc