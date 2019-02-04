#!/bin/bash
###############################################################################
#                               Documentation                                 #
###############################################################################
#                                                                             #
# Description                                                                 #
#     :
#                                                                             #
#                                                                             #
#                                                                             #
###############################################################################
#                           Identify Script Home                              #
################################################################################
#Find the script file home
pushd . > /dev/null
SCRIPT_DIRECTORY="${BASH_SOURCE[0]}";
while([ -h "${SCRIPT_DIRECTORY}" ]);
do
  cd "`dirname "${SCRIPT_DIRECTORY}"`"
  SCRIPT_DIRECTORY="$(readlink "`basename "${SCRIPT_DIRECTORY}"`")";
done
cd "`dirname "${SCRIPT_DIRECTORY}"`" > /dev/null
SCRIPT_DIRECTORY="`pwd`";
popd  > /dev/null
MODULE_HOME="`dirname "${SCRIPT_DIRECTORY}"`"
###############################################################################
#                           Import Dependencies                               #
###############################################################################

#Load common dependencies
. ${MODULE_HOME}/bin/import-dependecies.sh
#. ${MODULE_HOME}/bin/project-functions.sh
. ${MODULE_HOME}/etc/bin/retail-customer-ldap-export.properties


###############################################################################
#                                Implementation                               #
###############################################################################




fn_hdfs_26_to_azure_export_gen2 \
    ${INPUT_DIR} \
    ${NUM_MAP} \
    ${REFRESH_URL} \
    ${CLIENT_ID} \
    ${CREDENTIAL_FILE} \
    ${SINK_PATH} \
    ${REQ_JARS}



###############################################################################
#                                     End                                     #
###############################################################################
