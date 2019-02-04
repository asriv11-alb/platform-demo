
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

MSCK REPAIR TABLE increment_employee_work_schedule
;

INSERT OVERWRITE TABLE ${DB_WORK}.temp_employee_work_schedule
  SELECT T1.*
    FROM ${DB_WORK}.current_employee_work_schedule T1
    LEFT OUTER JOIN ${DB_WORK}.increment_employee_work_schedule T2
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
            workschedule_employee_alternateid,
            workschedule_employee_employeeid,
            workschedule_employee_employeenm_effectivetimeperiod_duration,
            workschedule_employee_employeenm_effectivetimeperiod_endts,
            workschedule_employee_employeenm_effectivetimeperiod_inclusiveind,
            workschedule_employee_employeenm_effectivetimeperiod_startts,
            workschedule_employee_employeenm_familynm,
            workschedule_employee_employeenm_formattednm,
            workschedule_employee_employeenm_generationaffixcd,
            workschedule_employee_employeenm_givennm,
            workschedule_employee_employeenm_maidennm,
            workschedule_employee_employeenm_middlenm,
            workschedule_employee_employeenm_nicknm,
            workschedule_employee_employeenm_preferredsalutationcd,
            workschedule_employee_employeenm_qualificationaffixcd,
            workschedule_employee_employeenm_titlecd,
            workschedule_employee_employeetypecd,
            workschedule_jobcd,
            workschedule_jobtitlenm,
            workschedule_shiftbreak_breakendts,
            workschedule_shiftbreak_breakstartts,
            workschedule_shiftbreak_breaktype,
            workschedule_wagegroupcd,
            workschedule_wagetype,
            workschedule_workday_workdayofwk,
            workschedule_workday_workdt,
            workschedule_worklocation_alternateid,
            workschedule_worklocation_departmentid,
            workschedule_worklocation_facilityaddress_addressline1txt,
            workschedule_worklocation_facilityaddress_addressline2txt,
            workschedule_worklocation_facilityaddress_addressusagetypecd,
            workschedule_worklocation_facilityaddress_citynm,
            workschedule_worklocation_facilityaddress_countrycd,
            workschedule_worklocation_facilityaddress_countynm,
            workschedule_worklocation_facilityaddress_faxnbr,
            workschedule_worklocation_facilityaddress_latitudedegree,
            workschedule_worklocation_facilityaddress_longitudedegree,
            workschedule_worklocation_facilityaddress_phonenbr,
            workschedule_worklocation_facilityaddress_postalzonecd,
            workschedule_worklocation_facilityaddress_statecd,
            workschedule_worklocation_facilityaddress_timezonecd,
            workschedule_worklocation_facilityid,
            workschedule_worklocation_facilityname,
            workschedule_worklocation_facilitytype,
            workschedule_worklocation_orghierarchy_orgentitynm,
            workschedule_worklocation_orghierarchy_orgentitytype,
            workschedule_worklocation_orghierarchy_orgentityvalue,
            workschedule_worklocation_parentfacilityid,
            workschedule_workshift_shiftdt,
            workschedule_workshift_shiftdurationhrs,
            workschedule_workshift_shiftendts,
            workschedule_workshift_shiftid,
            workschedule_workshift_shiftjob_shiftjobcd,
            workschedule_workshift_shiftjob_shiftjobtitlenm,
            workschedule_workshift_shiftjob_segmentid,
            workschedule_workshift_shiftjob_segmentstartts,
            workschedule_workshift_shiftjob_segmentendts,
            workschedule_workshift_shiftstartts,
            workweek_workweekend_workweekendday,
            workweek_workweekend_workweekenddt,
            workweek_workweekstart_workweekstartday,
            workweek_workweekstart_workweekstartdt
        FROM (SELECT *,
     MAX(creationtm) OVER (PARTITION
   BY employee_sk ,document_alternatedocumentid ) AS max_creationtm
            FROM ${DB_WORK}.increment_employee_work_schedule) AS SUB
    WHERE creationtm = max_creationtm;


--#############################################################################
--#                                   End                                     #
--#############################################################################

