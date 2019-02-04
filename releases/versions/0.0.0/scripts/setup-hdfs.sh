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
#                        Setup HDFS Layer Directories                         #
###############################################################################

fn_create_hdfs_directory "${HADOOP_ROOT_DIR}/default/stage/in"

fn_create_hdfs_directory "${HADOOP_ROOT_DIR}/default/raw"

fn_create_hdfs_directory "${HADOOP_ROOT_DIR}/default/gold"

fn_create_hdfs_directory "${HADOOP_ROOT_DIR}/default/smith"

fn_create_hdfs_directory "${HADOOP_ROOT_DIR}/default/trans"

fn_create_hdfs_directory "${HADOOP_ROOT_DIR}/default/stage/out"

fn_create_hdfs_directory "${HADOOP_ROOT_DIR}/default/system"

fn_create_hdfs_directory "${HADOOP_ROOT_DIR}/default/temp"



################################################################################
#                                     End                                      #
################################################################################