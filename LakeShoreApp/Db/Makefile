TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
#  Optimization of db files using dbst (DEFAULT: NO)
#DB_OPT = YES

#----------------------------------------------------
# Create and install (or just install) into <top>/db
# databases, templates, substitutions like this
#DB += xxx.db
DB += lakeshore.req

#DB_INSTALLS += $(TOP)/xxxApp/Db/xxx.proto
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336_SIM.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336analog.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336analog_SIM.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336loop.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336loop_SIM.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336output.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336output_SIM.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336zone.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore336zone_analog.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore_input.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore_input_SIM.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore_link_output.template
DB_INSTALLS += $(LAKESHORE)/db/lakeshore_option_3062.template
DB_INSTALLS += $(LAKESHORE)/db/param_window_ls.template

DB_INSTALLS += $(LAKESHORE)/protocol/ls336.proto

DB_INSTALLS += $(AUTOSAVE)/db/save_restoreStatus.db

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_template = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

