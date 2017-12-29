ifdef BUILD_GMS
ifeq ($(strip $(BUILD_GMS)), yes)
include $(call all-subdir-makefiles)
endif
endif
