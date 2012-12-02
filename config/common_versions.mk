# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JOP40D BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")


# Additional properties
PRODUCT_VERSION_MAJOR = 2.1
PRODUCT_VERSION_MINOR = 2

PRODUCT_PROPERTY_OVERRIDES += \
ro.modversion=NexusEvolution-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-NIGHTLY-$(shell date +"%m-%d-%y")
    

