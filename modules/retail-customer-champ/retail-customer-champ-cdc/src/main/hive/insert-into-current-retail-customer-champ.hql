
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


INSERT OVERWRITE TABLE ${DB_WORK}.current_retail_customer_champ
  SELECT * FROM ${DB_WORK}.temp_retail_customer_champ;

TRUNCATE TABLE ${DB_WORK}.increment_retail_customer_champ;

TRUNCATE TABLE ${DB_WORK}.temp_retail_customer_champ;


--#############################################################################
--#                                   End                                     #
--#############################################################################

