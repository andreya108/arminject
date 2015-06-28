LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := external/stlport/stlport bionic/ bionic/libstdc++/include libcore/include
LOCAL_SHARED_LIBRARIES += libcutils libstlport libdl

LOCAL_MODULE    := injector
LOCAL_SRC_FILES := main.cpp

include $(BUILD_EXECUTABLE)
