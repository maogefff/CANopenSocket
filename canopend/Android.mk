# Makefile for CANopend.

#android
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)


#所有的源码目录
STACKDRV_SRC =  ../CANopenNode/stack/socketCAN
STACK_SRC =     ../CANopenNode/stack
CANOPEN_SRC =   ../CANopenNode
CANOPEND_SRC =  ./src
OBJ_DICT_SRC =  ./objDict
APP_SRC =       ./app

#生成的模块名

#LOCAL_MODULE = $(APP_SRC)/canopend
LOCAL_MODULE = canopend

#android头文件路径
INCLUDE_DIRS := $(LOCAL_PATH)/$(STACKDRV_SRC) \
$(LOCAL_PATH)/$(STACK_SRC)   \
$(LOCAL_PATH)/$(CANOPEN_SRC)   \
$(LOCAL_PATH)/$(CANOPEND_SRC)   \
$(LOCAL_PATH)/$(OBJ_DICT_SRC)   \
$(LOCAL_PATH)/$(APP_SRC)   \
####################


#头文件
LOCAL_C_INCLUDES += $(INCLUDE_DIRS)

#android编译的源文件

SOURCES =      $(STACKDRV_SRC)/CO_driver.c         \
               $(STACKDRV_SRC)/CO_OD_storage.c     \
               $(STACKDRV_SRC)/CO_Linux_tasks.c    \
               $(STACK_SRC)/crc16-ccitt.c          \
               $(STACK_SRC)/CO_SDO.c               \
               $(STACK_SRC)/CO_Emergency.c         \
               $(STACK_SRC)/CO_NMT_Heartbeat.c     \
               $(STACK_SRC)/CO_SYNC.c              \
               $(STACK_SRC)/CO_PDO.c               \
               $(STACK_SRC)/CO_HBconsumer.c        \
               $(STACK_SRC)/CO_SDOmaster.c         \
               $(STACK_SRC)/CO_trace.c             \
               $(CANOPEN_SRC)/CANopen.c            \
               $(CANOPEND_SRC)/CO_command.c        \
               $(CANOPEND_SRC)/CO_comm_helpers.c   \
               $(CANOPEND_SRC)/CO_master.c         \
               $(CANOPEND_SRC)/CO_time.c           \
               $(CANOPEND_SRC)/main.c              \
               $(OBJ_DICT_SRC)/CO_OD.c             \
               $(APP_SRC)/application.c

#源文件
LOCAL_SRC_FILES := $(SOURCES)

# canopend is three-threaded application: nonblocking mainline, nonblocking
# rt-thread and blocking command interface thread.
# If there is a need to compile canopend as a single-threaded application, then:
#   - Command interface is not possible, so remove CO_command.c,
#     CO_comm_helpers.c, CO_master.c (and CO_SDOmaster.c) from SOURCES.
#   - Add flag -DCO_SINGLE_THREAD to the CFLAGS.
#   - Remove flag -pthread from LDFLAGS.
# Flag -lrt in LDFLAGS is necessary only with older kernels.



LOCAL_MODULE_PATH := $(LOCAL_PATH)/bin

#编译成可执行文件
include $(BUILD_EXECUTABLE)
#include $(BUILD_PREBUILT)
