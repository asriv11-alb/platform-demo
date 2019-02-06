
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


INSERT OVERWRITE TABLE ${DB_WORK}.current_employee_work_avail
  SELECT * FROM ${DB_WORK}.temp_employee_work_avail;

TRUNCATE TABLE ${DB_WORK}.increment_employee_work_avail;

TRUNCATE TABLE ${DB_WORK}.temp_employee_work_avail;


--#############################################################################
--#                                   End                                     #
--#############################################################################

