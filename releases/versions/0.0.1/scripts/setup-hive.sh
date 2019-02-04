#!/bin/bash
###############################################################################
#                               Documentation                                 #
###############################################################################
#                                                                             #
# Description                                                                 #
#     :                                                                       #
#                                                                             #
#                                                                             #
#                                                                             #
###############################################################################
#                           Identify Script Home                              #
###############################################################################

fn_create_external_hive_database "${DB_WORK}" "${DB_WORK_DIR}"

fn_run_hive \
    "${PROJECT_HOME_DIRECTORY}" \
    "${PROJECT_HOME_DIRECTORY}/upc-product-cdc/etc/hive/upc-product.hive.properties" \
    "${PROJECT_HOME_DIRECTORY}/upc-product-cdc/etc/schema/upc-product-current.hql"

fn_run_hive \
    "${PROJECT_HOME_DIRECTORY}" \
    "${PROJECT_HOME_DIRECTORY}/upc-product-cdc/etc/hive/upc-product.hive.properties" \
    "${PROJECT_HOME_DIRECTORY}/upc-product-cdc/etc/schema/upc-product-history.hql"

fn_run_hive \
    "${PROJECT_HOME_DIRECTORY}" \
    "${PROJECT_HOME_DIRECTORY}/upc-product-cdc/etc/hive/upc-product.hive.properties" \
    "${PROJECT_HOME_DIRECTORY}/upc-product-cdc/etc/schema/upc-product-increment.hql"

fn_run_hive \
    "${PROJECT_HOME_DIRECTORY}" \
    "${PROJECT_HOME_DIRECTORY}/upc-product-cdc/etc/hive/upc-product.hive.properties" \
    "${PROJECT_HOME_DIRECTORY}/upc-product-cdc/etc/schema/upc-product-temp.hql"


################################################################################
#                                     End                                      #
################################################################################