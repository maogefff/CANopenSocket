# Makefile for CANopenCommand.

LOCAL_PATH := $(call my-dir)
#清除
include $(CLEAR_VARS)

APPL_SRC =      .

#模块名
LOCAL_MODULE := canopencomm

#头文件
INCLUDE_DIRS = $(LOCAL_PATH)/$(APPL_SRC)
LOCAL_C_INCLUDES += $(INCLUDE_DIRS)

#源文件
SOURCES =       $(APPL_SRC)/CANopenCommand.c
LOCAL_SRC_FILES := $(SOURCES)

#指定生成目录
LOCAL_MODULE_PATH := $(LOCAL_PATH)/bin

#可执行程序
include $(BUILD_EXECUTABLE)

