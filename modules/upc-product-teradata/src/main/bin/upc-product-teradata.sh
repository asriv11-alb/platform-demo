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
. ${MODULE_HOME}/etc/bin/upc-product-teradata.properties

###############################################################################
#                                Implementation                               #
###############################################################################


fn_azure_export_gen2_to_hdfs_26 \
    ${AD_HD_INPUT_DIR} \
    ${NUM_MAP} \
    ${REFRESH_URL} \
    ${CLIENT_ID} \
    ${CREDENTIAL_FILE} \
    ${AD_HD_SINK_PATH} \
    ${REQ_JARS}

fn_hdfs_to_teradata_export \
    ${TDCH_JAR} \
    ${USERNAME} \
    ${PASSWORD_FILE} \
    ${SERVER} \
    ${DATABASE} \
    ${TABLE_AB_HD} \
    ${AD_HD_SINK_PATH} \
    ${NUMBER_OF_MAPPERS} \
    ${SEPARATOR}



###############################################################################
#                                     End                                     #
###############################################################################
