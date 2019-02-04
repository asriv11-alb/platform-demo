
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
    ${DB_WORK}.current_retail_customer_email
;

CREATE TABLE ${DB_WORK}.current_retail_customer_email
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
    customerid                       STRING,
    customeralternateid_codetype                       STRING,
    customeralternateid_sequencenbr                       STRING,
    customeralternateid_alternateidtxt                       STRING,
    customeralternateid_alternateidnbr                       STRING,
    customernm_typecode                       STRING,
    customernm_sequencenbr                       STRING,
    customernm_preferredind                       STRING,
    customernm_formattednm                       STRING,
    customernm_preferredsalutationcd                       STRING,
    customernm_titlecd                       STRING,
    customernm_givennm                       STRING,
    customernm_nicknm                       STRING,
    customernm_middlenm                       STRING,
    customernm_familynm                       STRING,
    customernm_maidennm                       STRING,
    customernm_generationaffixcd                       STRING,
    customernm_qualificationaffixcd                       STRING,
    customernm_effectivetimeperiod_inclusiveind                       STRING,
    customernm_effectivetimeperiod_startts                       STRING,
    customernm_effectivetimeperiod_duration                       STRING,
    customernm_effectivetimeperiod_endts                       STRING,
    contact_typecode                       STRING,
    contact_sequencenbr                       STRING,
    contact_preferredind                       STRING,
    contact_phonefaxcontact_typecode                       STRING,
    contact_phonefaxcontact_primaryflag                       STRING,
    contact_phonefaxcontact_areacd                       STRING,
    contact_phonefaxcontact_phonenbr                       STRING,
    contact_phonefaxcontact_extensionnbr                       STRING,
    contact_phonefaxcontact_countrycd                       STRING,
    contact_digitalcontact_digitaladdress                       STRING,
    contact_digitalcontact_addresstype                       STRING,
    contact_address_addressusagetypecd                       STRING,
    contact_address_addressline1txt                       STRING,
    contact_address_addressline2txt                       STRING,
    contact_address_citynm                       STRING,
    contact_address_countynm                       STRING,
    contact_address_postalzonecd                       STRING,
    contact_address_statecd                       STRING,
    contact_address_countrycd                       STRING,
    contact_effectivetimeperiod_inclusiveind                       STRING,
    contact_effectivetimeperiod_startts                       STRING,
    contact_effectivetimeperiod_duration                       STRING,
    contact_effectivetimeperiod_endts                       STRING,
    gendercd_code                       STRING,
    gendercd_description                       STRING,
    birthdt                       STRING,
    children_childnm_typecode                       STRING,
    children_childnm_sequencenbr                       STRING,
    children_childnm_preferredind                       STRING,
    children_childnm_formattednm                       STRING,
    children_childnm_preferredsalutationcd                       STRING,
    children_childnm_titlecd                       STRING,
    children_childnm_givennm                       STRING,
    children_childnm_nicknm                       STRING,
    children_childnm_middlenm                       STRING,
    children_childnm_familynm                       STRING,
    children_childnm_maidennm                       STRING,
    children_childnm_generationaffixcd                       STRING,
    children_childnm_qualificationaffixcd                       STRING,
    children_childnm_effectivetimeperiod_inclusiveind                       STRING,
    children_childnm_effectivetimeperiod_startts                       STRING,
    children_childnm_effectivetimeperiod_duration                       STRING,
    children_childnm_effectivetimeperiod_endts                       STRING,
    children_birthdt                       STRING,
    children_gender_code                       STRING,
    children_gender_description                       STRING,
    joindt                       STRING,
    householdincomeamt                       STRING,
    nameonreceiptind                       STRING,
    receivemailind                       STRING,
    familysizeqty                       STRING,
    fastforwardid                       STRING,
    goodneighborsegmentnbr                       STRING,
    preferredstoreid_facilitytype                       STRING,
    preferredstoreid_facilityid                       STRING,
    preferredstoreid_facilityname                       STRING,
    preferredstoreid_parentfacilityid                       STRING,
    preferredstoreid_facilityaddress_addressusagetypecd                       STRING,
    preferredstoreid_facilityaddress_addressline1txt                       STRING,
    preferredstoreid_facilityaddress_addressline2txt                       STRING,
    preferredstoreid_facilityaddress_citynm                       STRING,
    preferredstoreid_facilityaddress_countynm                       STRING,
    preferredstoreid_facilityaddress_postalzonecd                       STRING,
    preferredstoreid_facilityaddress_statecd                       STRING,
    preferredstoreid_facilityaddress_countrycd                       STRING,
    preferredstoreid_facilityaddress_latitudedegree                       STRING,
    preferredstoreid_facilityaddress_longitudedegree                       STRING,
    preferredstoreid_facilityaddress_timezonecd                       STRING,
    preferredstoreid_facilityaddress_phonenbr                       STRING,
    preferredstoreid_facilityaddress_faxnbr                       STRING,
    preferredstoreid_divisionid                       STRING,
    preferredstoreid_corporationid                       STRING,
    preferredstoreid_bannercd                       STRING,
    onlineshoppinginfo_loginid                       STRING,
    onlineshoppinginfo_deliveryaddress_addressusagetypecd                       STRING,
    onlineshoppinginfo_deliveryaddress_addressline1txt                       STRING,
    onlineshoppinginfo_deliveryaddress_addressline2txt                       STRING,
    onlineshoppinginfo_deliveryaddress_citynm                       STRING,
    onlineshoppinginfo_deliveryaddress_countynm                       STRING,
    onlineshoppinginfo_deliveryaddress_postalzonecd                       STRING,
    onlineshoppinginfo_deliveryaddress_statecd                       STRING,
    onlineshoppinginfo_deliveryaddress_countrycd                       STRING,
    onlineshoppinginfo_deliveryaddress_latitudedegree                       STRING,
    onlineshoppinginfo_deliveryaddress_longitudedegree                       STRING,
    onlineshoppinginfo_deliveryaddress_timezonecd                       STRING,
    onlineshoppinginfo_deliveryaddress_phonenbr                       STRING,
    onlineshoppinginfo_deliveryaddress_faxnbr                       STRING,
    onlineshoppinginfo_billingaddress_addressusagetypecd                       STRING,
    onlineshoppinginfo_billingaddress_addressline1txt                       STRING,
    onlineshoppinginfo_billingaddress_addressline2txt                       STRING,
    onlineshoppinginfo_billingaddress_citynm                       STRING,
    onlineshoppinginfo_billingaddress_countynm                       STRING,
    onlineshoppinginfo_billingaddress_postalzonecd                       STRING,
    onlineshoppinginfo_billingaddress_statecd                       STRING,
    onlineshoppinginfo_billingaddress_countrycd                       STRING,
    onlineshoppinginfo_billingaddress_latitudedegree                       STRING,
    onlineshoppinginfo_billingaddress_longitudedegree                       STRING,
    onlineshoppinginfo_billingaddress_timezonecd                       STRING,
    onlineshoppinginfo_billingaddress_phonenbr                       STRING,
    onlineshoppinginfo_billingaddress_faxnbr                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilitytype                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityid                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityname                       STRING,
    onlineshoppinginfo_preferreddugstoreid_parentfacilityid                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_addressusagetypecd                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_addressline1txt                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_addressline2txt                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_citynm                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_countynm                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_postalzonecd                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_statecd                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_countrycd                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_latitudedegree                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_longitudedegree                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_timezonecd                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_phonenbr                       STRING,
    onlineshoppinginfo_preferreddugstoreid_facilityaddress_faxnbr                       STRING,
    onlineshoppinginfo_customertypecd                       STRING,
    onlineshoppinginfo_customernotestxt                       STRING,
    onlineshoppinginfo_favoriterequestind                       STRING,
    onlineshoppinginfo_accountstatuscd                       STRING,
    onlineshoppinginfo_registrationpostalcd                       STRING,
    onlineshoppinginfo_recruitmentsourcedsc                       STRING,
    onlineshoppinginfo_payment_typecode                       STRING,
    onlineshoppinginfo_payment_preferredind                       STRING,
    onlineshoppinginfo_payment_description                       STRING,
    onlineshoppinginfo_payment_financialinstitutionnm                       STRING,
    onlineshoppinginfo_securityquestionsanswers_questiontxt                       STRING,
    onlineshoppinginfo_securityquestionsanswers_answertxt                       STRING,
    onlineshoppinginfo_securityquestionsanswers_sequencenbr                       STRING,
    onlineshoppinginfo_thirdpartydelivery_preferredind                       STRING,
    onlineshoppinginfo_thirdpartydelivery_deliverycompanyid                       STRING,
    onlineshoppinginfo_thirdpartydelivery_deliverycompanynm                       STRING,
    onlineshoppinginfo_thirdpartydelivery_firsteffectivedt                       STRING,
    onlineshoppinginfo_thirdpartydelivery_lasteffectivedt                       STRING,
    multichannelrelationship_channelcd                       STRING,
    multichannelrelationship_channelnm                       STRING,
    multichannelrelationship_firsteffectivedt                       STRING,
    multichannelrelationship_lasteffectivedt                       STRING,
    employee_id                       STRING,
    employee_alternateid                       STRING,
    employee_personnm_typecode                       STRING,
    employee_personnm_sequencenbr                       STRING,
    employee_personnm_preferredind                       STRING,
    employee_personnm_formattednm                       STRING,
    employee_personnm_preferredsalutationcd                       STRING,
    employee_personnm_titlecd                       STRING,
    employee_personnm_givennm                       STRING,
    employee_personnm_nicknm                       STRING,
    employee_personnm_middlenm                       STRING,
    employee_personnm_familynm                       STRING,
    employee_personnm_maidennm                       STRING,
    employee_personnm_generationaffixcd                       STRING,
    employee_personnm_qualificationaffixcd                       STRING,
    employee_personnm_effectivetimeperiod_inclusiveind                       STRING,
    employee_personnm_effectivetimeperiod_startts                       STRING,
    employee_personnm_effectivetimeperiod_duration                       STRING,
    employee_personnm_effectivetimeperiod_endts                       STRING,
    employee_gender                       STRING,
    employee_gendercd                       STRING,
    employee_maritalstatus                       STRING,
    employee_maritalstatuscd                       STRING,
    employee_birthdt                       STRING,
    employee_marriagedt                       STRING,
    employee_deathdt                       STRING,
    employee_language                       STRING,
    employee_languagecd                       STRING,
    employee_nationalitycountry                       STRING,
    employee_nationalitycountrycd                       STRING,
    employee_contact_typecode                       STRING,
    employee_contact_sequencenbr                       STRING,
    employee_contact_preferredind                       STRING,
    employee_contact_phonefaxcontact_typecode                       STRING,
    employee_contact_phonefaxcontact_primaryflag                       STRING,
    employee_contact_phonefaxcontact_areacd                       STRING,
    employee_contact_phonefaxcontact_phonenbr                       STRING,
    employee_contact_phonefaxcontact_extensionnbr                       STRING,
    employee_contact_phonefaxcontact_countrycd                       STRING,
    employee_contact_digitalcontact_digitaladdress_addresstype                       STRING,
    employee_contact_address_addressusagetypecd                       STRING,
    employee_contact_address_addressline1txt                       STRING,
    employee_contact_address_addressline2txt                       STRING,
    employee_contact_address_citynm                       STRING,
    employee_contact_address_countynm                       STRING,
    employee_contact_address_postalzonecd                       STRING,
    employee_contact_address_statecd                       STRING,
    employee_contact_address_countrycd                       STRING,
    employee_contact_effectivetimeperiod_inclusiveind                       STRING,
    employee_contact_effectivetimeperiod_startts                       STRING,
    employee_contact_effectivetimeperiod_duration                       STRING,
    employee_contact_effectivetimeperiod_endts                       STRING,
    employee_birthcountry                       STRING,
    employee_birthcountrycd                       STRING,
    employee_ethnicity                       STRING,
    employee_ethniccd                       STRING,
    employee_religion                       STRING,
    employee_religioncd                       STRING,
    employee_employeetypecd                       STRING,
    employee_jobtitle                       STRING,
    employee_jobcd                       STRING,
    employee_hrdepartment_departmentid                       STRING,
    employee_hrdepartment_departmentnm                       STRING,
    employee_qualification_code                       STRING,
    employee_qualification_name                       STRING,
    employee_qualification_qualificationdt                       STRING,
    employee_qualification_effectivetimeperiod_inclusiveind                       STRING,
    employee_qualification_effectivetimeperiod_startts                       STRING,
    employee_qualification_effectivetimeperiod_duration                       STRING,
    employee_qualification_effectivetimeperiod_endts                       STRING,
    employee_professionalskill_code                       STRING,
    employee_professionalskill_name                       STRING,
    employee_professionalskill_competencycd                       STRING,
    employee_professionalskill_lastuseddatetime                       STRING,
    employee_professionalskill_trainingdatetime                       STRING,
    employee_professionalskill_effectivetimeperiod_inclusiveind                       STRING,
    employee_professionalskill_effectivetimeperiod_startts                       STRING,
    employee_professionalskill_effectivetimeperiod_duration                       STRING,
    employee_professionalskill_effectivetimeperiod_endts                       STRING,
    employee_hiredt                       STRING,
    employee_originalhiredt                       STRING,
    employee_lasthiredt                       STRING,
    employee_lastterminationdt                       STRING,
    employee_terminationdt                       STRING,
    employee_status_code                       STRING,
    employee_status_description                       STRING,
    employee_status_effectivedatetime                       STRING,
    employee_status_reasoncd                       STRING,
    employee_status_reason                       STRING,
    employee_status_timeperiod_inclusiveind                       STRING,
    employee_status_timeperiod_startts                       STRING,
    employee_status_timeperiod_duration                       STRING,
    employee_status_timeperiod_endts                       STRING,
    employee_emergencycontact_typecode                       STRING,
    employee_emergencycontact_sequencenbr                       STRING,
    employee_emergencycontact_preferredind                       STRING,
    employee_emergencycontact_relationcode                       STRING,
    employee_emergencycontact_phonefaxcontact_typecode                       STRING,
    employee_emergencycontact_phonefaxcontact_primaryflag                       STRING,
    employee_emergencycontact_phonefaxcontact_areacd                       STRING,
    employee_emergencycontact_phonefaxcontact_phonenbr                       STRING,
    employee_emergencycontact_phonefaxcontact_extensionnbr                       STRING,
    employee_emergencycontact_phonefaxcontact_countrycd                       STRING,
    employee_emergencycontact_digitalcontact_digitaladdress_addresstype                       STRING,
    employee_emergencycontact_address_addressusagetypecd                       STRING,
    employee_emergencycontact_address_addressline1txt                       STRING,
    employee_emergencycontact_address_addressline2txt                       STRING,
    employee_emergencycontact_address_citynm                       STRING,
    employee_emergencycontact_address_countynm                       STRING,
    employee_emergencycontact_address_postalzonecd                       STRING,
    employee_emergencycontact_address_statecd                       STRING,
    employee_emergencycontact_address_countrycd                       STRING,
    employee_emergencycontact_effectivetimeperiod_inclusiveind                       STRING,
    employee_emergencycontact_effectivetimeperiod_startts                       STRING,
    employee_emergencycontact_effectivetimeperiod_duration                       STRING,
    employee_emergencycontact_effectivetimeperiod_endts                       STRING,
    employee_emergencycontact_personnm_typecode                       STRING,
    employee_emergencycontact_personnm_sequencenbr                       STRING,
    employee_emergencycontact_personnm_preferredind                       STRING,
    employee_emergencycontact_personnm_formattednm                       STRING,
    employee_emergencycontact_personnm_preferredsalutationcd                       STRING,
    employee_emergencycontact_personnm_titlecd                       STRING,
    employee_emergencycontact_personnm_givennm                       STRING,
    employee_emergencycontact_personnm_nicknm                       STRING,
    employee_emergencycontact_personnm_middlenm                       STRING,
    employee_emergencycontact_personnm_familynm                       STRING,
    employee_emergencycontact_personnm_maidennm                       STRING,
    employee_emergencycontact_personnm_generationaffixcd                       STRING,
    employee_emergencycontact_personnm_qualificationaffixcd                       STRING,
    employee_emergencycontact_personnm_effectivetimeperiod_inclusiveind                       STRING,
    employee_emergencycontact_personnm_effectivetimeperiod_startts                       STRING,
    employee_emergencycontact_personnm_effectivetimeperiod_duration                       STRING,
    employee_emergencycontact_personnm_effectivetimeperiod_endts                       STRING,
    employee_militarystatus_code                       STRING,
    employee_militarystatus_description                       STRING,
    customerrelationship_relationshiptype_householdid                       STRING,
    customerrelationship_relationshiptype_customeraccountnbr                       STRING,
    customerrelationship_relationshiptype_clubcardnbr                       STRING,
    customerrelationship_relationshiptype_customeralternateid                       STRING,
    customerrelationship_relationshiptype_startdt                       STRING,
    customerrelationship_relationshiptype_statuscd                       STRING,
    customerrelationship_relationshiptype_employeeind                       STRING,
    customerrelationship_activationts                       STRING,
    customerrelationship_cardaccountstatustypecd                       STRING,
    customerrelationship_issuerstoreid_facilitytype                       STRING,
    customerrelationship_issuerstoreid_facilityid                       STRING,
    customerrelationship_issuerstoreid_facilityname                       STRING,
    customerrelationship_issuerstoreid_parentfacilityid                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_addressusagetypecd                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_addressline1txt                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_addressline2txt                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_citynm                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_countynm                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_postalzonecd                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_statecd                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_countrycd                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_latitudedegree                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_longitudedegree                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_timezonecd                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_phonenbr                       STRING,
    customerrelationship_issuerstoreid_facilityaddress_faxnbr                       STRING,
    customerrelationship_firsteffectivedt                       STRING,
    customerrelationship_lasteffectivedt                       STRING,
    customerrewards_partnerid                       STRING,
    customerrewards_partnernm                       STRING,
    customerrewards_partnercustomerid                       STRING,
    customerrewards_partnerjoindt                       STRING,
    customerrewards_firsteffectivedt                       STRING,
    customerrewards_lasteffectivedt                       STRING,
    marketsegment_segmentcd                       STRING,
    marketsegment_segmentdsc                       STRING,
    marketsegment_firsteffectivedt                       STRING,
    marketsegment_lasteffectivedt                       STRING,
    taste_tastecd                       STRING,
    taste_tastedsc                       STRING,
    taste_firsteffectivedt                       STRING,
    taste_lasteffectivedt                       STRING,
    customerpreferences_preferencecd                       STRING,
    customerpreferences_preferencetypecd                       STRING,
    customerpreferences_preferencetypedsc                       STRING,
    customerpreferences_preferencevaluecnt                       STRING,
    customerpreferences_preferencecategorycd                       STRING,
    customerpreferences_preferencesubcategorycd                       STRING,
    customerpreferences_firsteffectivedt                       STRING,
    customerpreferences_lasteffectivedt                       STRING,
    pet_petcd                       STRING,
    pet_petdsc                       STRING,
    pet_petcnt                       STRING,
    customersubscriptions_subscriptioncd                       STRING,
    customersubscriptions_subscriptiontypecd                       STRING,
    customersubscriptions_subscriptiondsc                       STRING,
    customersubscriptions_optchoice_optinind                       STRING,
    customersubscriptions_optchoice_optoutind                       STRING,
    customersubscriptions_firsteffectivedt                       STRING,
    customersubscriptions_lasteffectivedt                       STRING,
    mobileprofile                       STRING  
  )
  ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '|'
  STORED AS TEXTFILE
;


--###############################################################################
--#                                     End                                     #
--###############################################################################

