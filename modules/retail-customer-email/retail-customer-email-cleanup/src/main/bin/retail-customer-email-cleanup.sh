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
. ${MODULE_HOME}/etc/bin/retail-customer-email-cleanup.shell.properties

###############################################################################
#                                Implementation                               #
###############################################################################


fn_delete_local_file "${BATCH_ID_DATA_DIR}"/retail-customer-email/"${BATCH_ID_FILE_NAME}"

fn_log_info "Successfully deleted batch_id file"

fn_get_value_from_file "${MAX_RECORD_DIR}/retail-customer-email_max_record.value"

MAX_VAL="${VAL}"

fn_write_val_to_file \
    "$MAX_VAL" \
    "${MIN_RECORD_DIR}/retail-customer-email_min_record.value"


###############################################################################
#                                     End                                     #
###############################################################################
