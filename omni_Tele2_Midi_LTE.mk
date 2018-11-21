

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Tele2_Midi_LTE
PRODUCT_NAME := omni_Tele2_Midi_LTE
PRODUCT_BRAND := Tele2
PRODUCT_MODEL := Tele2_Midi_LTE
