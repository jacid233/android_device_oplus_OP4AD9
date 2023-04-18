$(call inherit-product, vendor/oppo/OP4AD9/OP4AD9-vendor.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery init
PRODUCT_PACKAGES += \
	init.recovery.qcom.rc