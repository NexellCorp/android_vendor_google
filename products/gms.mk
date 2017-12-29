###############################################################################
#GMS_BASE_PATH := packages/apps/3rd_GMS/3rd_GMS_$(GMS_ANDROID_PLATFORM)/$(GN3RD_GMS_SUPPORT)
GMS_BASE_PATH := vendor/google



# GMS mandatory core packages
ifdef GN_OVERSEA_PRODUCT
PRODUCT_PACKAGES := \
    ConfigUpdater \
    GoogleBackupTransport \
    GoogleFeedback \
    GoogleLoginService \
    GooglePartnerSetup \
    GoogleServicesFramework \
    GoogleCalendarSyncAdapter \
    GoogleContactsSyncAdapter \
    GoogleTTS \
    GmsCore
endif
#######################################    
ifneq ($(findstring Phonesky,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Phonesky
endif

ifneq ($(findstring SetupWizard,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += SetupWizard
endif

#######################################

# GMS mandatory libraries
PRODUCT_PACKAGES += \
    com.google.android.maps.jar \
    com.google.android.media.effects.jar

# Overlay For GMS devices
# Setting PRODUCT_PREBUILT_WEBVIEWCHROMIUM as yes will prevent from building
# webviewchromium from source, and use prebuilt WebViewGoogle.apk in GMS pack
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes
#
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
PRODUCT_PACKAGES += WebViewGoogle
endif
$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/sample/products/location_overlay.mk)
##futao change
##PRODUCT_PACKAGE_OVERLAYS += vendor/google/products/gms_overlay
#Gionee <Oveasea_Req> <lipeiming> <20161027> for CR01769901 beign
ifeq ($(strip $(GN_OVERSEA_PRODUCT)), yes)
PRODUCT_PACKAGE_OVERLAYS += $(GMS_BASE_PATH)/products/gms_overlay
else
PRODUCT_PACKAGE_OVERLAYS := $(GMS_BASE_PATH)/products/gms_overlay
endif
#Gionee <Oveasea_Req> <lipeiming> <20161027> for CR01769901 end

# Configuration files for GMS apps
##futao change 
#PRODUCT_COPY_FILES += \
#    vendor/google/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
#    vendor/google/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
#    vendor/google/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml
PRODUCT_COPY_FILES += \
    $(GMS_BASE_PATH)/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    $(GMS_BASE_PATH)/etc/preferred-apps/google.xml:system/etc/preferred-apps/google.xml \
    $(GMS_BASE_PATH)/etc/sysconfig/google.xml:system/etc/sysconfig/google.xml

# GMS mandatory application packages
# Note: Duo is mandatory for telephony devices, whereas Hangouts is for non-telephony devices.
#PRODUCT_PACKAGES += \
#    Chrome \
#    Drive \
#    Gmail2 \
#    Duo \
#    Hangouts \
#    Maps \
#    Music2 \
#    Photos \
#    Velvet \
#    Videos \
#    YouTube
#######################################
#Gionee <GN_Oversea_Req> <chenle> <20161124> for CR01774319 beign
ifneq ($(findstring Duo,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += \
    Duo
endif
#Gionee <GN_Oversea_Req> <chenle> <20161124> for CR01774319 end

ifneq ($(findstring Velvet,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += \
    Velvet
endif

ifneq ($(findstring Drive,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Drive
endif

ifneq ($(findstring Gmail2,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Gmail2
endif

ifneq ($(findstring Hangouts,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Hangouts
endif



ifneq ($(findstring Maps,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Maps
endif

ifneq ($(findstring Music2,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Music2
endif


ifneq ($(findstring Photos,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Photos
endif

ifneq ($(findstring Videos,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Videos
endif

ifneq ($(findstring YouTube,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += YouTube
endif

ifneq ($(findstring Chrome,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Chrome
endif

# GMS optional application packages
#PRODUCT_PACKAGES += \
#    Books \
#    CalendarGoogle \
#    CloudPrint \
#    DeskClockGoogle \
#    DMAgent \
#    FaceLock \
#    LatinImeGoogle \
#    PlayGames \
#    PlusOne \
#    TagGoogle \
#    talkback \
#    AndroidPay

##################################
ifneq ($(findstring Books,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Books
endif

ifneq ($(findstring CalendarGoogle,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += CalendarGoogle
endif

ifneq ($(findstring CloudPrint,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += CloudPrint
endif

ifneq ($(findstring DeskClockGoogle,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += DeskClockGoogle
endif

ifneq ($(findstring DMAgent,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += DMAgent
endif

ifneq ($(findstring FaceLock,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += FaceLock
endif

ifneq ($(findstring LatinImeGoogle,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += LatinImeGoogle
endif

ifneq ($(findstring Talkback,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += talkback
endif

ifneq ($(findstring PlayGames,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += PlayGames
endif

ifneq ($(findstring PlusOne,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += PlusOne
endif

ifneq ($(findstring TagGoogle,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += TagGoogle
endif

ifneq ($(findstring AndroidPay,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += AndroidPay
endif

#PRODUCT_PACKAGES += \
#    EditorsDocs \
#    EditorsSheets \
#    EditorsSlides \
#    Keep \
#    Newsstand

##################################
ifneq ($(findstring EditorsDocs,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += EditorsDocs
endif

ifneq ($(findstring EditorsSheets,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += EditorsSheets
endif

ifneq ($(findstring EditorsSlides,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += EditorsSlides
endif

ifneq ($(findstring Keep,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Keep
endif

ifneq ($(findstring Newsstand,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Newsstand
endif

#PRODUCT_PACKAGES += \
#    EditorsDocsStub \
#    EditorsSheetsStub \
#    EditorsSlidesStub \
#    KeepStub \
#    NewsstandStub

ifneq ($(findstring EditorsDocsStub,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += EditorsDocsStub
endif

ifneq ($(findstring EditorsSheetsStub,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += EditorsSheetsStub
endif

ifneq ($(findstring EditorsSlidesStub,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += EditorsSlidesStub
endif

ifneq ($(findstring KeepStub,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += KeepStub
endif

ifneq ($(findstring NewsstandStub,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += NewsstandStub
endif
# More GMS optional application packages
#PRODUCT_PACKAGES += \
#    CalculatorGoogle \
#    Messenger \
#    GoogleHindiIME \
#    GooglePinyinIME \
#    JapaneseIME \
#    KoreanIME \
#    NewsWeather

ifneq ($(findstring CalculatorGoogle,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += CalculatorGoogle
endif

ifneq ($(findstring Messenger,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += Messenger
endif

ifneq ($(findstring GoogleHindiIME,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += GoogleHindiIME
endif

ifneq ($(findstring GooglePinyinIME,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += GooglePinyinIME
endif

ifneq ($(findstring JapaneseIME,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += JapaneseIME
endif

ifneq ($(findstring KoreanIME,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += KoreanIME
endif

ifneq ($(findstring NewsWeather,$(GN3RD_GMS_APPLICATION)),)
PRODUCT_PACKAGES += NewsWeather
endif

# Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.mode=OPTIONAL \
    ro.com.google.gmsversion=6.0_r11
