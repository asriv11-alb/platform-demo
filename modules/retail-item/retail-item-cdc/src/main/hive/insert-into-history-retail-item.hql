
--#############################################################################
--#                             Documentation                                 #
--#############################################################################
--#                                                                           #
--# Description                                                               #
--#     :                                                                     #
--#                                                                           #
--#                                                                           #
--#                                                                           #
--#                                                                           #
--#                                                                           #
--#                                                                           #
--#############################################################################
--#                              Declaration                                  #
--##############################################################################


set hive.exec.dynamic.partition.mode=nonstrict;

INSERT INTO TABLE ${DB_WORK}.history_retail_item
PARTITION(batch_id)
  SELECT * FROM ${DB_WORK}.increment_retail_item;


--#############################################################################
--#                                   End                                     #
--#############################################################################

