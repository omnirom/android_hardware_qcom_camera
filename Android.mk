ifeq ($(strip $(BOARD_USES_AOSP_CAMERA)), true)
  ifneq ($(filter msm8992 msm8994,$(TARGET_BOARD_PLATFORM)),)
    ifneq ($(strip $(USE_CAMERA_STUB)),true)
      ifneq ($(BUILD_TINY_ANDROID),true)
        include $(call all-subdir-makefiles)
      endif
    endif
  endif
endif
