# proprietary side of the device
$(call inherit-product-if-exists, vendor/semc/iyokan/iyokan-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/semc/iyokan/overlay

$(call inherit-product, device/semc/mogami-common/mogami.mk)

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

PRODUCT_AAPT_CONFIG := normal hdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
    device/semc/iyokan/prebuilt/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/semc/iyokan/prebuilt/init.semc.usb.rc:root/init.semc.usb.rc \
    device/semc/mogami-common/prebuilt/init.semc.keyboard.rc:root/init.semc.keyboard.rc \
    device/semc/iyokan/prebuilt/pre_hw_config.sh:root/pre_hw_config.sh \
    device/semc/iyokan/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    device/semc/msm7x30-common/prebuilt/logo_H.rle:root/logo.rle \
    device/semc/iyokan/prebuilt/bootrec-device:root/sbin/bootrec-device \
    device/semc/mogami-common/prebuilt/keyswap:root/sbin/keyswap \
    device/semc/iyokan/recovery.fstab:root/recovery.fstab

$(call inherit-product, device/semc/msm7x30-common/prebuilt/resources-hdpi.mk)

#LCD DENSITY
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    com.qc.hdmi_out=false
