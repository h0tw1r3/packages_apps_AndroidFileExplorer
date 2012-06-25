LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES += $(call all-java-files-under, src)

LOCAL_STATIC_JAVA_LIBRARIES := commons-io

LOCAL_PACKAGE_NAME := AndroidFileManager

LOCAL_SDK_VERSION := current

LOCAL_PROGUARD_FLAG_FILES := proguard.cfg

include $(BUILD_PACKAGE)

##################################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := commons-io:lib/commons-io-2.0.1.jar

include $(BUILD_MULTI_PREBUILT)

