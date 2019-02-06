
--###############################################################################
--#                               Documentation                                 #
--###############################################################################
--#                                                                             #
--# Description                                                                 #
--#     :                                                                       #
--#                                                                             #
--#                                                                             #
--#                                                                             #
--#                                                                             #
--#                                                                             #
--#                                                                             #
--###############################################################################
--#                                  Script                                     #
--###############################################################################


DROP TABLE
  IF EXISTS
    ${DB_WORK}.increment_employee_work_schedule
;

CREATE TABLE IF NOT EXISTS ${DB_WORK}.increment_employee_work_schedule
  (
    creationtm                       STRING,
    employee_sk                       STRING,
    document_alternatedocumentid                       STRING,
    document_creationdt                       STRING,
    document_description                       STRING,
    document_documentid                       STRING,
    document_documentnm                       STRING,
    document_externaltargetind                       STRING,
    document_gatewaynm                       STRING,
    document_inboundoutboundind                       STRING,
    document_interchangedate                       STRING,
    document_interchangetime                       STRING,
    document_internalfiletransferind                       STRING,
    document_note                       STRING,
    document_receiverid                       STRING,
    document_routingsystemnm                       STRING,
    document_senderid                       STRING,
    document_sourceapplicationcd                       STRING,
    document_targetapplicationcd                       STRING,
    documentaction_actiontypecd                       STRING,
    documentaction_recordtypecd                       STRING,
    workschedule_employee_alternateid                       STRING,
    workschedule_employee_employeeid                       STRING,
    workschedule_employee_employeenm_effectivetimeperiod_duration                       STRING,
    workschedule_employee_employeenm_effectivetimeperiod_endts                       STRING,
    workschedule_employee_employeenm_effectivetimeperiod_inclusiveind                       STRING,
    workschedule_employee_employeenm_effectivetimeperiod_startts                       STRING,
    workschedule_employee_employeenm_familynm                       STRING,
    workschedule_employee_employeenm_formattednm                       STRING,
    workschedule_employee_employeenm_generationaffixcd                       STRING,
    workschedule_employee_employeenm_givennm                       STRING,
    workschedule_employee_employeenm_maidennm                       STRING,
    workschedule_employee_employeenm_middlenm                       STRING,
    workschedule_employee_employeenm_nicknm                       STRING,
    workschedule_employee_employeenm_preferredsalutationcd                       STRING,
    workschedule_employee_employeenm_qualificationaffixcd                       STRING,
    workschedule_employee_employeenm_titlecd                       STRING,
    workschedule_employee_employeetypecd                       STRING,
    workschedule_jobcd                       STRING,
    workschedule_jobtitlenm                       STRING,
    workschedule_shiftbreak_breakendts                       STRING,
    workschedule_shiftbreak_breakstartts                       STRING,
    workschedule_shiftbreak_breaktype                       STRING,
    workschedule_wagegroupcd                       STRING,
    workschedule_wagetype                       STRING,
    workschedule_workday_workdayofwk                       STRING,
    workschedule_workday_workdt                       STRING,
    workschedule_worklocation_alternateid                       STRING,
    workschedule_worklocation_departmentid                       STRING,
    workschedule_worklocation_facilityaddress_addressline1txt                       STRING,
    workschedule_worklocation_facilityaddress_addressline2txt                       STRING,
    workschedule_worklocation_facilityaddress_addressusagetypecd                       STRING,
    workschedule_worklocation_facilityaddress_citynm                       STRING,
    workschedule_worklocation_facilityaddress_countrycd                       STRING,
    workschedule_worklocation_facilityaddress_countynm                       STRING,
    workschedule_worklocation_facilityaddress_faxnbr                       STRING,
    workschedule_worklocation_facilityaddress_latitudedegree                       STRING,
    workschedule_worklocation_facilityaddress_longitudedegree                       STRING,
    workschedule_worklocation_facilityaddress_phonenbr                       STRING,
    workschedule_worklocation_facilityaddress_postalzonecd                       STRING,
    workschedule_worklocation_facilityaddress_statecd                       STRING,
    workschedule_worklocation_facilityaddress_timezonecd                       STRING,
    workschedule_worklocation_facilityid                       STRING,
    workschedule_worklocation_facilityname                       STRING,
    workschedule_worklocation_facilitytype                       STRING,
    workschedule_worklocation_orghierarchy_orgentitynm                       STRING,
    workschedule_worklocation_orghierarchy_orgentitytype                       STRING,
    workschedule_worklocation_orghierarchy_orgentityvalue                       STRING,
    workschedule_worklocation_parentfacilityid                       STRING,
    workschedule_workshift_shiftdt                       STRING,
    workschedule_workshift_shiftdurationhrs                       STRING,
    workschedule_workshift_shiftendts                       STRING,
    workschedule_workshift_shiftid                       STRING,
    workschedule_workshift_shiftjob_shiftjobcd                       STRING,
    workschedule_workshift_shiftjob_shiftjobtitlenm                       STRING,
    workschedule_workshift_shiftjob_segmentid                       STRING,
    workschedule_workshift_shiftjob_segmentstartts                       STRING,
    workschedule_workshift_shiftjob_segmentendts                       STRING,
    workschedule_workshift_shiftstartts                       STRING,
    workweek_workweekend_workweekendday                       STRING,
    workweek_workweekend_workweekenddt                       STRING,
    workweek_workweekstart_workweekstartday                       STRING,
    workweek_workweekstart_workweekstartdt                       STRING  
  )
    PARTITIONED BY(
     batch_id  BIGINT
  )
    ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '|'
  STORED AS TEXTFILE
--  LOCATION '${SINK_PATH}'
;

USE ${DB_WORK}
;

MSCK REPAIR TABLE increment_employee_work_schedule
;


--###############################################################################
--#                                     End                                     #
--###############################################################################

