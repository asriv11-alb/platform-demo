#!/bin/bash
###############################################################################
#                               Documentation                                 #
###############################################################################
#                                                                             #
# Description                                                                 #
#     : This script contains declaration of all dependent scripts             #
#                                                                             #
#                                                                             #
#                                                                             #
###############################################################################
#                               Declarations                                  #
###############################################################################


if [ "${CONFIG_HOME}" == "" ]
then
  PROJECT_HOME="`dirname "${MODULE_HOME}"`"
  CONFIG_HOME="${PROJECT_HOME}/config"
#  ROOT_HOME="`dirname "${PROJECT_HOME}"`"
#  ROOT_CONFIG_HOME="${ROOT_HOME}/config"
fi

#. ${ROOT_CONFIG_HOME}/project-parent-pig.properties
#. ${ROOT_CONFIG_HOME}/project-parent-shell.properties
#. ${ROOT_CONFIG_HOME}/project-parent-hive.properties
. ${CONFIG_HOME}/bash-env.properties
. ${CONFIG_HOME}/platform-demo-flow.properties
#. ${CONFIG_HOME}/job.properties
. ${CONFIG_HOME}/pig-env.properties
. ${MODULE_HOME}/bin/constants.sh
. ${MODULE_HOME}/bin/log-functions.sh
. ${MODULE_HOME}/bin/common-functions.sh
. ${MODULE_HOME}/bin/hadoop-functions.sh
. ${MODULE_HOME}/bin/hadoop-commands.sh
. ${MODULE_HOME}/bin/ingest-functions.sh



###############################################################################
#                                     End                                     #
###############################################################################
