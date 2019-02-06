
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
    ${DB_WORK}.work_employee_work_avail
;

CREATE EXTERNAL TABLE IF NOT EXISTS ${DB_WORK}.work_employee_work_avail
  (
    creationtm                       STRING,
    employee_sk                       STRING,
    document_alternatedocumentid                       STRING,
    document_creationdt                       STRING,
    document_dataclassification_businesssensitivitylevel_code                       STRING,
    document_dataclassification_businesssensitivitylevel_description                       STRING,
    document_dataclassification_dataclassificationlevel_code                       STRING,
    document_dataclassification_dataclassificationlevel_description                       STRING,
    document_dataclassification_pcidataind                       STRING,
    document_dataclassification_phidataind                       STRING,
    document_dataclassification_ppidataind                       STRING,
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
    worklocation_accountingunitnm                       STRING,
    worklocation_acquireddt                       STRING,
    worklocation_acquiredfromnm                       STRING,
    worklocation_alternateid                       STRING,
    worklocation_altfacilityid                       STRING,
    worklocation_authorizedheadcountnbr                       STRING,
    worklocation_conversiondt                       STRING,
    worklocation_conversionind                       STRING,
    worklocation_departmentid                       STRING,
    worklocation_displayareainsftnbr                       STRING,
    worklocation_employee_alternateid                       STRING,
    worklocation_employee_availability_availabilitydurationhrs                       STRING,
    worklocation_employee_availability_availabilityenddayofwk                       STRING,
    worklocation_employee_availability_availabilityendts                       STRING,
    worklocation_employee_availability_availabilitystartdayofwk                       STRING,
    worklocation_employee_availability_availabilitystartts                       STRING,
    worklocation_employee_availability_availabilitystatus                       STRING,
    worklocation_employee_availability_availabilitystatus_code                       STRING,
    worklocation_employee_availability_availabilitystatus_description                       STRING,
    worklocation_employee_availability_effectivedayofwk                       STRING,
    worklocation_employee_availability_effectivedt                       STRING,
    worklocation_employee_availability_perdaymaxavailablehrs                       STRING,
    worklocation_employee_availability_perdayminavailablehrs                       STRING,
    worklocation_employee_availability_preferreddurationhrs                       STRING,
    worklocation_employee_availability_preferredenddayofwk                       STRING,
    worklocation_employee_availability_preferredendts                       STRING,
    worklocation_employee_availability_preferredstartdayofwk                       STRING,
    worklocation_employee_availability_preferredstartts                       STRING,
    worklocation_employee_employeeid                       STRING,
    worklocation_employee_employeenm_effectivetimeperiod_duration                       STRING,
    worklocation_employee_employeenm_effectivetimeperiod_endts                       STRING,
    worklocation_employee_employeenm_effectivetimeperiod_inclusiveind                       STRING,
    worklocation_employee_employeenm_effectivetimeperiod_startts                       STRING,
    worklocation_employee_employeenm_familynm                       STRING,
    worklocation_employee_employeenm_formattednm                       STRING,
    worklocation_employee_employeenm_generationaffixcd                       STRING,
    worklocation_employee_employeenm_givennm                       STRING,
    worklocation_employee_employeenm_maidennm                       STRING,
    worklocation_employee_employeenm_middlenm                       STRING,
    worklocation_employee_employeenm_nicknm                       STRING,
    worklocation_employee_employeenm_preferredsalutationcd                       STRING,
    worklocation_employee_employeenm_qualificationaffixcd                       STRING,
    worklocation_employee_employeenm_titlecd                       STRING,
    worklocation_employee_employeetypecd                       STRING,
    worklocation_employee_jobcd                       STRING,
    worklocation_employee_jobtitlenm                       STRING,
    worklocation_employee_wagegroupcd                       STRING,
    worklocation_employee_wagetype                       STRING,
    worklocation_facilityaddress_addressline1txt                       STRING,
    worklocation_facilityaddress_addressline2txt                       STRING,
    worklocation_facilityaddress_addressusagetypecd                       STRING,
    worklocation_facilityaddress_citynm                       STRING,
    worklocation_facilityaddress_countrycd                       STRING,
    worklocation_facilityaddress_countynm                       STRING,
    worklocation_facilityaddress_faxnbr                       STRING,
    worklocation_facilityaddress_latitudedegree                       STRING,
    worklocation_facilityaddress_longitudedegree                       STRING,
    worklocation_facilityaddress_phonenbr                       STRING,
    worklocation_facilityaddress_postalzonecd                       STRING,
    worklocation_facilityaddress_statecd                       STRING,
    worklocation_facilityaddress_timezonecd                       STRING,
    worklocation_facilityareasftnbr                       STRING,
    worklocation_facilitybannercd                       STRING,
    worklocation_facilitycloseannounceddt                       STRING,
    worklocation_facilityclosedt                       STRING,
    worklocation_facilitycurrentstatuscd                       STRING,
    worklocation_facilityfaxnbr                       STRING,
    worklocation_facilityid                       STRING,
    worklocation_facilitymanagernm                       STRING,
    worklocation_facilitynm                       STRING,
    worklocation_facilityopendt                       STRING,
    worklocation_facilityphonenbr                       STRING,
    worklocation_facilitysubtypecd                       STRING,
    worklocation_facilitytype                       STRING,
    worklocation_financialservicesind                       STRING,
    worklocation_firsteffectivedt                       STRING,
    worklocation_lastdecorationcostamt                       STRING,
    worklocation_lastdecorationdt                       STRING,
    worklocation_lastdecorationtypecd                       STRING,
    worklocation_lasteffectivedt                       STRING,
    worklocation_lastremodeldt                       STRING,
    worklocation_leveldsc                       STRING,
    worklocation_manageremployeeid                       STRING,
    worklocation_manageruserid                       STRING,
    worklocation_milkareacd                       STRING,
    worklocation_orderenddt                       STRING,
    worklocation_orderstartdt                       STRING,
    worklocation_ordertempstopenddt                       STRING,
    worklocation_ordertempstopstartdt                       STRING,
    worklocation_orghierarchy_orgentitynm                       STRING,
    worklocation_orghierarchy_orgentitytype                       STRING,
    worklocation_orghierarchy_orgentityvalue                       STRING,
    worklocation_parentfacilityid                       STRING,
    worklocation_parkingspacescnt                       STRING,
    worklocation_payrollunitcd                       STRING,
    worklocation_replacedcorporationid                       STRING,
    worklocation_replaceddivisionid                       STRING,
    worklocation_replacedfacilityid                       STRING,
    worklocation_salesareainsftnbr                       STRING,
    worklocation_scanequipmentvendorcd                       STRING,
    worklocation_seasectioncd                       STRING,
    worklocation_seasubsectioncd                       STRING,
    worklocation_tempcloseenddt                       STRING,
    worklocation_tempclosestartdt                       STRING,
    worklocation_tiercompanycd                       STRING,
    worklocation_timeandattendancesystemind                       STRING,
    worklocation_timeclockformatcd                       STRING,
    worklocation_tobaccolicensenbr                       STRING  
  )
    PARTITIONED BY(
     batch_id  BIGINT
  )
    ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '|'
  STORED AS TEXTFILE
  LOCATION '${DB_WORK_DIR}/employee-work-avail'
;

USE ${DB_WORK}
;

MSCK REPAIR TABLE work_employee_work_avail
;



--###############################################################################
--#                                     End                                     #
--###############################################################################

