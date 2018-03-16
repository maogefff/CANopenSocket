# Makefile for CANopenNode, basic compile with no CAN device.

#android
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)


STACKDRV_SRC =  stack/drvTemplate
STACK_SRC =     stack
CANOPEN_SRC =   .
APPL_SRC =      example

#生成的模块名
#LINK_TARGET  =  canopennode
LOCAL_MODULE = canopennode

#头文件
INCLUDE_DIRS = $(LOCAL_PATH)/$(STACKDRV_SRC) \
               $(LOCAL_PATH)/$(STACK_SRC)    \
               $(LOCAL_PATH)/$(CANOPEN_SRC)  \
               $(LOCAL_PATH)/$(APPL_SRC)
#头文件
LOCAL_C_INCLUDES += $(INCLUDE_DIRS)

#源文件
SOURCES =       $(LOCAL_PATH)/$(STACKDRV_SRC)/CO_driver.c     \
                $(LOCAL_PATH)/$(STACKDRV_SRC)/eeprom.c        \
                $(LOCAL_PATH)/$(STACK_SRC)/crc16-ccitt.c      \
                $(LOCAL_PATH)/$(STACK_SRC)/CO_SDO.c           \
                $(LOCAL_PATH)/$(STACK_SRC)/CO_Emergency.c     \
                $(LOCAL_PATH)/$(STACK_SRC)/CO_NMT_Heartbeat.c \
                $(LOCAL_PATH)/$(STACK_SRC)/CO_SYNC.c          \
                $(LOCAL_PATH)/$(STACK_SRC)/CO_PDO.c           \
                $(LOCAL_PATH)/$(STACK_SRC)/CO_HBconsumer.c    \
                $(LOCAL_PATH)/$(STACK_SRC)/CO_SDOmaster.c     \
                $(LOCAL_PATH)/$(STACK_SRC)/CO_trace.c         \
                $(LOCAL_PATH)/$(CANOPEN_SRC)/CANopen.c        \
                $(LOCAL_PATH)/$(APPL_SRC)/CO_OD.c             \
                $(LOCAL_PATH)/$(APPL_SRC)/main.c

#源文件
LOCAL_SRC_FILES := $(SOURCES)

#编译成可执行文件
include $(BUILD_EXECUTABLE)

#OBJS = $(SOURCES:%.c=%.o)
#CC = gcc
#CFLAGS = -Wall $(INCLUDE_DIRS)
#LDFLAGS =


#.PHONY: all clean

#all: clean $(LINK_TARGET)

#clean:
#	rm -f $(OBJS) $(LINK_TARGET)

#%.o: %.c
#	$(CC) $(CFLAGS) -c $< -o $@

#$(LINK_TARGET): $(OBJS)
#	$(CC) $(LDFLAGS) $^ -o $@
