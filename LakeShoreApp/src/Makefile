TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = LakeShore
# LakeShore.dbd will be created and installed
DBD += LakeShore.dbd

# LakeShore.dbd will be made up from these files:
LakeShore_DBD += base.dbd

# Include dbd files from all support applications:
#LakeShore_DBD += xxx.dbd
LakeShore_DBD += calc.dbd
LakeShore_DBD += stream-base.dbd
LakeShore_DBD += asyn.dbd
LakeShore_DBD += busySupport.dbd
LakeShore_DBD += drvAsynIPPort.dbd
LakeShore_DBD += asSupport.dbd

# Add all the support libraries needed by this IOC
#LakeShore_LIBS += xxx
LakeShore_LIBS += calc
LakeShore_LIBS += stream
LakeShore_LIBS += asyn
LakeShore_LIBS += busy
LakeShore_LIBS += autosave

# LakeShore_registerRecordDeviceDriver.cpp derives from LakeShore.dbd
LakeShore_SRCS += LakeShore_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
LakeShore_SRCS_DEFAULT += LakeShoreMain.cpp
LakeShore_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#LakeShore_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
LakeShore_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

