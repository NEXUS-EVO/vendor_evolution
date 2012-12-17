# Generic product
PRODUCT_NAME := evolution
PRODUCT_BRAND := evolution
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/evolution/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/evolution/overlay/dictionaries

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.media.enc.jpeg.quality=100 \
    windowsmgr.max_events_per_sec=240 \
    ro.setupwizard.enterprise_mode=1

# T-mobile heme engine 
include vendor/evolution/config/themes_common.mk

# Common packages 
PRODUCT_PACKAGES += \
    CMFileManager \
    NovaLauncher \
    LatinIME \
    Torch

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/evolution/CHANGELOG.mkdn:system/etc/CHANGELOG-CM.txt
    
# Common Google Applications and libs
PRODUCT_COPY_FILES += \
    vendor/evolution/proprietary/common/app/Calendar.apk:system/app/Calendar.apk \
    vendor/evolution/proprietary/common/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/evolution/proprietary/common/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk \
    vendor/evolution/proprietary/common/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/evolution/proprietary/common/app/Gmail2.apk:system/app/Gmail2.apk \
    vendor/evolution/proprietary/common/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/evolution/proprietary/common/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    vendor/evolution/proprietary/common/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/evolution/proprietary/common/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/evolution/proprietary/common/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/evolution/proprietary/common/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/evolution/proprietary/common/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/evolution/proprietary/common/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/evolution/proprietary/common/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/evolution/proprietary/common/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/evolution/proprietary/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/evolution/proprietary/common/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/evolution/proprietary/common/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/evolution/proprietary/common/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/evolution/proprietary/common/app/PartnerBookmarksProvider.apk:system/app/PartnerBookmarksProvider.apk \
    vendor/evolution/proprietary/common/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/evolution/proprietary/common/app/RingsExtended.apk:system/app/RingsExtended.apk \
    vendor/evolution/proprietary/common/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/evolution/proprietary/common/app/Street.apk:system/app/Street.apk \
    vendor/evolution/proprietary/common/app/Talk.apk:system/app/Talk.apk \
    vendor/evolution/proprietary/common/app/Talkback.apk:system/app/Talkback.apk \
    vendor/evolution/proprietary/common/app/Velvet.apk:system/app/Velvet.apk \
    vendor/evolution/proprietary/common/app/VoiceSearchStub.apk:system/app/VoiceSearchStub.apk \
    vendor/evolution/proprietary/common/app/YouTube.apk:system/app/YouTube.apk \
    vendor/evolution/proprietary/common/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/evolution/proprietary/common/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/evolution/proprietary/common/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    vendor/evolution/proprietary/common/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    vendor/evolution/proprietary/common/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/evolution/proprietary/common/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
    vendor/evolution/proprietary/common/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/evolution/proprietary/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/evolution/proprietary/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
    vendor/evolution/proprietary/common/lib/libjni_eglfence.so:system/lib/libjni_eglfence.so \
    vendor/evolution/proprietary/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/evolution/proprietary/common/lib/liblightcycle.so:system/lib/liblightcycle.so \
    vendor/evolution/proprietary/common/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/evolution/proprietary/common/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/evolution/proprietary/common/lib/libttscompat.so:system/lib/libttscompat.so \
    vendor/evolution/proprietary/common/lib/libttspico.so:system/lib/libttspico.so \
    vendor/evolution/proprietary/common/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/evolution/proprietary/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/evolution/proprietary/common/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so 

# Common Applications
PRODUCT_COPY_FILES += \
    vendor/evolution/proprietary/common/app/Superuser.apk:system/app/Superuser.apk \

# Common Binary files
PRODUCT_COPY_FILES += \
    vendor/evolution/proprietary/common/bin/flash_image:system/bin/flash_image \
    vendor/evolution/proprietary/common/xbin/bash:system/xbin/bash \
    vendor/evolution/proprietary/common/xbin/zipalign:system/xbin/zipalign \
    vendor/evolution/proprietary/common/xbin/su:system/xbin/su 
    
# Common files for init.d support and etc files
PRODUCT_COPY_FILES += \
    vendor/evolution/proprietary/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/evolution/proprietary/common/etc/gps.conf:system/etc/gps.conf \
    vendor/evolution/proprietary/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/evolution/proprietary/common/etc/sysctl.conf:system/etc/sysctl.conf 

# Common scripts
PRODUCT_COPY_FILES += \
    vendor/evolution/proprietary/common/xbin/blockads:system/xbin/blockads \
    vendor/evolution/proprietary/common/xbin/hostsblock:system/xbin/hostsblock \
    vendor/evolution/proprietary/common/xbin/hostsshow:system/xbin/hostsshow \
    vendor/evolution/proprietary/common/xbin/cpuinfo:system/xbin/cpuinfo \
    vendor/evolution/proprietary/common/xbin/rb:system/xbin/rb \
    vendor/evolution/proprietary/common/xbin/rr:system/xbin/rr \
    vendor/evolution/proprietary/common/xbin/showads:system/xbin/showads \
    vendor/evolution/proprietary/common/bin/shutdown:system/bin/shutdown \
    vendor/evolution/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/evolution/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/evolution/proprietary/common/xbin/zipalign_all:system/xbin/zipalign_all \
    vendor/evolution/proprietary/common/xbin/zipalign_app:system/xbin/zipalign_app 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

