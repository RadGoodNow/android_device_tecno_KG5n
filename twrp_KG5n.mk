# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Install gsi keys into ramdisk, to boot a developer GSI with verified boot
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff
$(call inherit-product, vendor/twrp/config/common.mk)

# INHERIT FROM THIS DEVICE TREE
$(call inherit-product, device/tecno/KG5n/device.mk)

PRODUCT_DEVICE := KG5n
PRODUCT_NAME := twrp_KG5n
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := KG5n
PRODUCT_MANUFACTURER := Tecno Mobility Limited
PRODUCT_RELEASE_NAME := Tecno Spark 8C
