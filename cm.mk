## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := MK16i

TARGET_BOOTANIMATION_NAME := vertical-480x854

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/iyokan/device_iyokan.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := iyokan
PRODUCT_NAME := cm_iyokan
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := Xperia Pro

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MK16i BUILD_FINGERPRINT="SEMC/MK16i_1251-0386/MK16i:4.0.4/4.1.B.0.431/UL5_3w:user/release-keys ro.build.description=MK16i-user 4.0.4 4.1.B.0.431 UL5_3w test-keys"