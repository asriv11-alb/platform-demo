
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



USE ${DB_WORK}
;

MSCK REPAIR TABLE increment_employee_work_avail
;

INSERT OVERWRITE TABLE ${DB_WORK}.temp_employee_work_avail
  SELECT T1.*
    FROM ${DB_WORK}.current_employee_work_avail T1
    LEFT OUTER JOIN ${DB_WORK}.increment_employee_work_avail T2
    ON (
    T1.employee_sk=T2.employee_sk AND
    T1.document_alternatedocumentid=T2.document_alternatedocumentid     )
    WHERE
    T2.employee_sk IS NULL AND
    T2.document_alternatedocumentid IS NULL 
 UNION
  SELECT
            max_creationtm,
            employee_sk,
            document_alternatedocumentid,
            document_creationdt,
            document_dataclassification_businesssensitivitylevel_code,
            document_dataclassification_businesssensitivitylevel_description,
            document_dataclassification_dataclassificationlevel_code,
            document_dataclassification_dataclassificationlevel_description,
            document_dataclassification_pcidataind,
            document_dataclassification_phidataind,
            document_dataclassification_ppidataind,
            document_description,
            document_documentid,
            document_documentnm,
            document_externaltargetind,
            document_gatewaynm,
            document_inboundoutboundind,
            document_interchangedate,
            document_interchangetime,
            document_internalfiletransferind,
            document_note,
            document_receiverid,
            document_routingsystemnm,
            document_senderid,
            document_sourceapplicationcd,
            document_targetapplicationcd,
            documentaction_actiontypecd,
            documentaction_recordtypecd,
            worklocation_accountingunitnm,
            worklocation_acquireddt,
            worklocation_acquiredfromnm,
            worklocation_alternateid,
            worklocation_altfacilityid,
            worklocation_authorizedheadcountnbr,
            worklocation_conversiondt,
            worklocation_conversionind,
            worklocation_departmentid,
            worklocation_displayareainsftnbr,
            worklocation_employee_alternateid,
            worklocation_employee_availability_availabilitydurationhrs,
            worklocation_employee_availability_availabilityenddayofwk,
            worklocation_employee_availability_availabilityendts,
            worklocation_employee_availability_availabilitystartdayofwk,
            worklocation_employee_availability_availabilitystartts,
            worklocation_employee_availability_availabilitystatus,
            worklocation_employee_availability_availabilitystatus_code,
            worklocation_employee_availability_availabilitystatus_description,
            worklocation_employee_availability_effectivedayofwk,
            worklocation_employee_availability_effectivedt,
            worklocation_employee_availability_perdaymaxavailablehrs,
            worklocation_employee_availability_perdayminavailablehrs,
            worklocation_employee_availability_preferreddurationhrs,
            worklocation_employee_availability_preferredenddayofwk,
            worklocation_employee_availability_preferredendts,
            worklocation_employee_availability_preferredstartdayofwk,
            worklocation_employee_availability_preferredstartts,
            worklocation_employee_employeeid,
            worklocation_employee_employeenm_effectivetimeperiod_duration,
            worklocation_employee_employeenm_effectivetimeperiod_endts,
            worklocation_employee_employeenm_effectivetimeperiod_inclusiveind,
            worklocation_employee_employeenm_effectivetimeperiod_startts,
            worklocation_employee_employeenm_familynm,
            worklocation_employee_employeenm_formattednm,
            worklocation_employee_employeenm_generationaffixcd,
            worklocation_employee_employeenm_givennm,
            worklocation_employee_employeenm_maidennm,
            worklocation_employee_employeenm_middlenm,
            worklocation_employee_employeenm_nicknm,
            worklocation_employee_employeenm_preferredsalutationcd,
            worklocation_employee_employeenm_qualificationaffixcd,
            worklocation_employee_employeenm_titlecd,
            worklocation_employee_employeetypecd,
            worklocation_employee_jobcd,
            worklocation_employee_jobtitlenm,
            worklocation_employee_wagegroupcd,
            worklocation_employee_wagetype,
            worklocation_facilityaddress_addressline1txt,
            worklocation_facilityaddress_addressline2txt,
            worklocation_facilityaddress_addressusagetypecd,
            worklocation_facilityaddress_citynm,
            worklocation_facilityaddress_countrycd,
            worklocation_facilityaddress_countynm,
            worklocation_facilityaddress_faxnbr,
            worklocation_facilityaddress_latitudedegree,
            worklocation_facilityaddress_longitudedegree,
            worklocation_facilityaddress_phonenbr,
            worklocation_facilityaddress_postalzonecd,
            worklocation_facilityaddress_statecd,
            worklocation_facilityaddress_timezonecd,
            worklocation_facilityareasftnbr,
            worklocation_facilitybannercd,
            worklocation_facilitycloseannounceddt,
            worklocation_facilityclosedt,
            worklocation_facilitycurrentstatuscd,
            worklocation_facilityfaxnbr,
            worklocation_facilityid,
            worklocation_facilitymanagernm,
            worklocation_facilitynm,
            worklocation_facilityopendt,
            worklocation_facilityphonenbr,
            worklocation_facilitysubtypecd,
            worklocation_facilitytype,
            worklocation_financialservicesind,
            worklocation_firsteffectivedt,
            worklocation_lastdecorationcostamt,
            worklocation_lastdecorationdt,
            worklocation_lastdecorationtypecd,
            worklocation_lasteffectivedt,
            worklocation_lastremodeldt,
            worklocation_leveldsc,
            worklocation_manageremployeeid,
            worklocation_manageruserid,
            worklocation_milkareacd,
            worklocation_orderenddt,
            worklocation_orderstartdt,
            worklocation_ordertempstopenddt,
            worklocation_ordertempstopstartdt,
            worklocation_orghierarchy_orgentitynm,
            worklocation_orghierarchy_orgentitytype,
            worklocation_orghierarchy_orgentityvalue,
            worklocation_parentfacilityid,
            worklocation_parkingspacescnt,
            worklocation_payrollunitcd,
            worklocation_replacedcorporationid,
            worklocation_replaceddivisionid,
            worklocation_replacedfacilityid,
            worklocation_salesareainsftnbr,
            worklocation_scanequipmentvendorcd,
            worklocation_seasectioncd,
            worklocation_seasubsectioncd,
            worklocation_tempcloseenddt,
            worklocation_tempclosestartdt,
            worklocation_tiercompanycd,
            worklocation_timeandattendancesystemind,
            worklocation_timeclockformatcd,
            worklocation_tobaccolicensenbr
        FROM (SELECT *,
     MAX(creationtm) OVER (PARTITION
   BY employee_sk ,document_alternatedocumentid ) AS max_creationtm
            FROM ${DB_WORK}.increment_employee_work_avail) AS SUB
    WHERE creationtm = max_creationtm;


--#############################################################################
--#                                   End                                     #
--#############################################################################

