# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/iyokan/iyokan-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/iyokan/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_AAPT_CONFIG := normal hdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
    device/semc/iyokan/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/iyokan/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/iyokan/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle

# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    device/semc/iyokan/recovery/bootrec-device:recovery/bootrec-device

# Device specific configs
PRODUCT_COPY_FILES += \
    device/semc/iyokan/config/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
    device/semc/iyokan/config/qwerty.idc:system/usr/idc/qwerty.idc \
    device/semc/iyokan/config/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/semc/iyokan/config/pm8058-keypad.idc:system/usr/idc/pm8058-keypad.idc \
    device/semc/iyokan/config/pm8058-keypad.kcm:system/usr/keychars/pm8058-keypad.kcm \
    device/semc/iyokan/config/atdaemon.kl:system/usr/keylayout/atdaemon.kl \
    device/semc/iyokan/config/msm_pmic_pwr_key.kl:system/usr/keylayout/msm_pmic_pwr_key.kl \
    device/semc/iyokan/config/pm8058-keypad.kl:system/usr/keylayout/pm8058-keypad.kl \
    device/semc/iyokan/config/simple_remote.kl:system/usr/keylayout/simple_remote.kl \
    device/semc/iyokan/config/als_curve.conf:system/etc/als_curve.conf \
    device/semc/iyokan/config/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/semc/iyokan/config/sensors.conf:system/etc/sensors.conf \
    device/semc/iyokan/config/tiwlan.ini:system/etc/tiwlan.ini

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-hdpi.mk)

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    com.qc.hdmi_out=false
