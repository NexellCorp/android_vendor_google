###############################################################################
# GooglePartnerSetup
LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../../products/VersionRule.mk
ifeq (strip $(GN3RD_GMS_SUPPORT),strip $(CURR_GMS_VER))

include $(CLEAR_VARS)
LOCAL_MODULE := GooglePartnerSetup
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_PRIVILEGED_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_OVERRIDES_PACKAGES :=
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
#LOCAL_REQUIRED_MODULES :=
#LOCAL_PREBUILT_JNI_LIBS :=
include $(BUILD_PREBUILT)
endif
