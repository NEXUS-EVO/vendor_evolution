# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/evolution/config/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := evolution_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_ID=JRO03C BUILD_FINGERPRINT=google/takju/maguro:4.1.1/JRO03C/398337:user/release-keys PRIVATE_BUILD_DESC="takju-user 4.1.1 JRO03C 398337 release-keys" BUILD_NUMBER=235179

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.mcc_fallback=262

# Inherit common build.prop overrides
-include vendor/evolution/config/common_versions.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/evolution/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/evolution/proprietary/maguro/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini 

# Inherit media effect blobs
-include vendor/evolution/config/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/evolution/config/common_facelock.mk

# Inherit drm blobs
-include vendor/evolution/config/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/evolution/config/common_speech_recognition.mk

# Include gsm apn list
-include vendor/evolution/config/gsm.mk

