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
#. ${MODULE_HOME}/bin/${tvar_root.getParent().getArtifactId()}-functions.sh

###############################################################################
#                                Implementation                               #
###############################################################################




fn_run_hive \
	"${MODULE_HOME}" \
    "${MODULE_HOME}/etc/hive/retail-customer-champ.hive.properties" \
    "${MODULE_HOME}/hive/reconsile-retail-customer-champ.hql"

fn_run_hive \
	"${MODULE_HOME}" \
    "${MODULE_HOME}/etc/hive/retail-customer-champ.hive.properties" \
    "${MODULE_HOME}/hive/insert-into-history-retail-customer-champ.hql"

fn_run_hive \
	"${MODULE_HOME}" \
    "${MODULE_HOME}/etc/hive/retail-customer-champ.hive.properties" \
    "${MODULE_HOME}/hive/insert-into-current-retail-customer-champ.hql"




#fn_run_hive \
#	"${MODULE_HOME}" \
#    "${MODULE_HOME}/etc/hive/retail-customer-champ.hive.properties" \
#    "${MODULE_HOME}/etc/schema/retail-customer-champ-ingest.hql"


###############################################################################
#                                     End                                     #
###############################################################################
