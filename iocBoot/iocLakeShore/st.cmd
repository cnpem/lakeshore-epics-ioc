#!../../bin/linux-x86_64/LakeShore

< envPaths

epicsEnvSet("P","COMP:A")
epicsEnvSet("IOCNAME","lakeshore-COMP-A")
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/db")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/LakeShore.dbd"
LakeShore_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure ("L0","10.31.54.150:7777",0,0,0)

cd "${TOP}/iocBoot/${IOC}"

## Load LakeShore substitutions
dbLoadTemplate("lakeshore.substitutions")

## Configure autosave
< save_restore.cmd

iocInit

create_monitor_set("lakeshore.req", 30, "P=${P}")
set_savefile_name("lakeshore.req", "${IOCNAME}.sav")
