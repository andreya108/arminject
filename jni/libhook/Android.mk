LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
		external/stlport/stlport \
		bionic/ \
		bionic/libstdc++/include \
		libcore/include \
		external/sqlite/dist \
		external/sqlite/android

LOCAL_SHARED_LIBRARIES += libcutils libstlport libdl libsqlite

LOCAL_MODULE    := libhook_sqlenovo
LOCAL_SRC_FILES := main.cpp hook.cpp report.cpp hooks/io.cpp hooks/sql.cpp
LOCAL_LDLIBS    := -llog

include $(BUILD_SHARED_LIBRARY)
