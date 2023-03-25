# Only the below variable(s) need to be changed!
#
# Define hardware platform
PRODUCT_PLATFORM := sdm450

# Release name
PRODUCT_RELEASE_NAME := TB8804F

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := TB8804F
PRODUCT_NAME := twrp_TB8804F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-8804F
PRODUCT_MANUFACTURER := Lenovo

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lenovo/TB8804F/device.mk)
