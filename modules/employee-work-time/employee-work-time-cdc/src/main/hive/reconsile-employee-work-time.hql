
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

MSCK REPAIR TABLE increment_employee_work_time
;

INSERT OVERWRITE TABLE ${DB_WORK}.temp_employee_work_time
  SELECT T1.*
    FROM ${DB_WORK}.current_employee_work_time T1
    LEFT OUTER JOIN ${DB_WORK}.increment_employee_work_time T2
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
            worklocation_altfacilityid,
            worklocation_authorizedheadcountnbr,
            worklocation_conversiondt,
            worklocation_conversionind,
            worklocation_departmentid,
            worklocation_displayareainsftnbr,
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
            worklocation_tobaccolicensenbr,
            worklocation_workweek_worktime_absencetype,
            worklocation_workweek_worktime_employee_alternateid,
            worklocation_workweek_worktime_employee_employeeid,
            worklocation_workweek_worktime_employee_employeenm_effectivetimeperiod_duration,
            worklocation_workweek_worktime_employee_employeenm_effectivetimeperiod_endts,
            worklocation_workweek_worktime_employee_employeenm_effectivetimeperiod_inclusiveind,
            worklocation_workweek_worktime_employee_employeenm_effectivetimeperiod_startts,
            worklocation_workweek_worktime_employee_employeenm_familynm,
            worklocation_workweek_worktime_employee_employeenm_formattednm,
            worklocation_workweek_worktime_employee_employeenm_generationaffixcd,
            worklocation_workweek_worktime_employee_employeenm_givennm,
            worklocation_workweek_worktime_employee_employeenm_maidennm,
            worklocation_workweek_worktime_employee_employeenm_middlenm,
            worklocation_workweek_worktime_employee_employeenm_nicknm,
            worklocation_workweek_worktime_employee_employeenm_preferredsalutationcd,
            worklocation_workweek_worktime_employee_employeenm_qualificationaffixcd,
            worklocation_workweek_worktime_employee_employeenm_titlecd,
            worklocation_workweek_worktime_employee_employeetypecd,
            worklocation_workweek_worktime_hourtypedsc,
            worklocation_workweek_worktime_hourtypeid,
            worklocation_workweek_worktime_jobcd,
            worklocation_workweek_worktime_jobtitle,
            worklocation_workweek_worktime_overtimeind,
            worklocation_workweek_worktime_projectdsc,
            worklocation_workweek_worktime_projectid,
            worklocation_workweek_worktime_timecodedsc,
            worklocation_workweek_worktime_timecodeid,
            worklocation_workweek_worktime_wagegroupcd,
            worklocation_workweek_worktime_wagetype,
            worklocation_workweek_worktime_workday_workdayofwk,
            worklocation_workweek_worktime_workday_workdt,
            worklocation_workweek_worktime_workshiftactual_actualpunchts,
            worklocation_workweek_worktime_workshiftactual_modifiedind,
            worklocation_workweek_worktime_workshiftactual_punchtypecd_code,
            worklocation_workweek_worktime_workshiftactual_punchtypecd_description,
            worklocation_workweek_worktime_workshiftrounded_shiftbreak_breakendts,
            worklocation_workweek_worktime_workshiftrounded_shiftbreak_breakstartts,
            worklocation_workweek_worktime_workshiftrounded_shiftbreak_breaktype,
            worklocation_workweek_worktime_workshiftrounded_shiftdt,
            worklocation_workweek_worktime_workshiftrounded_shiftdurationhrs,
            worklocation_workweek_worktime_workshiftrounded_shiftendts,
            worklocation_workweek_worktime_workshiftrounded_shiftid,
            worklocation_workweek_worktime_workshiftrounded_shiftstartts,
            worklocation_workweek_workweekend_workweekendday,
            worklocation_workweek_workweekend_workweekenddt,
            worklocation_workweek_workweekstart_workweekstartday,
            worklocation_workweek_workweekstart_workweekstartdt,
            worktime_workshift_shiftdt,
            worktime_workshift_shiftdurationhrs,
            worktime_workshift_shiftendts,
            worktime_workshift_shiftid,
            worktime_workshift_shiftstartts
        FROM (SELECT *,
     MAX(creationtm) OVER (PARTITION
   BY employee_sk ,document_alternatedocumentid ) AS max_creationtm
            FROM ${DB_WORK}.increment_employee_work_time) AS SUB
    WHERE creationtm = max_creationtm;


--#############################################################################
--#                                   End                                     #
--#############################################################################

