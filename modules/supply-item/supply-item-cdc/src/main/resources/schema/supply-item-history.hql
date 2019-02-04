
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
    ${DB_WORK}.history_supply_item
;

CREATE EXTERNAL TABLE ${DB_WORK}.history_supply_item
  (
    creationtm                       STRING,
    employee_sk                       STRING,
    document_releaseid                       STRING,
    document_versionid                       STRING,
    document_systemenvironmentcd                       STRING,
    document_documentid                       STRING,
    document_alternatedocumentid                       STRING,
    document_inboundoutboundind                       STRING,
    document_documentnm                       STRING,
    document_creationdt                       STRING,
    document_description_type                       STRING,
    document_sourceapplicationcd                       STRING,
    document_targetapplicationcd                       STRING,
    document_note_type                       STRING,
    document_gatewaynm                       STRING,
    document_senderid_qualifiercd                       STRING,
    document_receiverid_qualifiercd                       STRING,
    document_routingsystemnm                       STRING,
    document_internalfiletransferind                       STRING,
    document_interchangedate                       STRING,
    document_interchangetime                       STRING,
    document_externaltargetind                       STRING,
    document_dataclassification_dataclassificationlevel_code                       STRING,
    document_dataclassification_dataclassificationlevel_description                       STRING,
    document_dataclassification_businesssensitivitylevel_code                       STRING,
    document_dataclassification_businesssensitivitylevel_description                       STRING,
    document_dataclassification_phidataind                       STRING,
    document_dataclassification_pcidataind                       STRING,
    document_dataclassification_ppidataind                       STRING,
    documentaction                       STRING,
    document_actiontypecd                       STRING,
    document_recordtypecd                       STRING,
    corporationid                       STRING,
    divisionid                       STRING,
    distributioncenterid                       STRING,
    warehouseid                       STRING,
    corporateitemcd                       STRING,
    departmentid                       STRING,
    itemid_upc_upcnbr                       STRING,
    itemid_upc_upctxt                       STRING,
    itemid_upccomponents_packind                       STRING,
    itemid_upccomponents_manufacturerid                       STRING,
    itemid_upccomponents_salesid                       STRING,
    itemid_upccomponents_countryid                       STRING,
    itemid_upccomponents_systemid                       STRING,
    itemid_upccomponents_checkdigit                       STRING,
    itemid_gtinid                       STRING,
    itemid_vendorproductid                       STRING,
    itemid_manufproductid                       STRING,
    itemid_systemspecificitemid                       STRING,
    itemid_rfid                       STRING,
    itemid_internalitemid                       STRING,
    itemid_branchitemcd                       STRING,
    itemid_itemdescription                       STRING,
    producthierarchy_productgroup_productgroupcd                       STRING,
    producthierarchy_productgroup_productgroupnm                       STRING,
    producthierarchy_productcategorycd_productcategorycd                       STRING,
    producthierarchy_productcategorycd_productcategorynm                       STRING,
    producthierarchy_productclasscd_productclasscd                       STRING,
    producthierarchy_productclasscd_productclassnm                       STRING,
    producthierarchy_productclasscd_retailsectioncd                       STRING,
    producthierarchy_productsubclasslevel1_productsubclasslevel1cd                       STRING,
    producthierarchy_productsubclasslevel1_productsubclassleve1nm                       STRING,
    producthierarchy_productsubclasslevel2_productsubclasslevel2cd                       STRING,
    producthierarchy_productsubclasslevel2_productsubclasslevel2nm                       STRING,
    smic_smicgroupcd                       STRING,
    smic_smiccategorycd                       STRING,
    smic_smicclasscd                       STRING,
    smic_smicsubclasscd                       STRING,
    smic_smicsub_subclasscd                       STRING,
    productiongrouphierarchy_productgroup_productgroupcd                       STRING,
    productiongrouphierarchy_productgroup_productgroupnm                       STRING,
    productiongrouphierarchy_productcategorycd_productcategorycd                       STRING,
    productiongrouphierarchy_productcategorycd_productcategorynm                       STRING,
    productiongrouphierarchy_productclasscd_productclasscd                       STRING,
    productiongrouphierarchy_productclasscd_productclassnm                       STRING,
    productiongrouphierarchy_productclasscd_retailsectioncd                       STRING,
    productiongrouphierarchy_productsubclasslevel1_productsubclasslevel1cd                       STRING,
    productiongrouphierarchy_productsubclasslevel1_productsubclassleve1nm                       STRING,
    productiongrouphierarchy_productsubclasslevel2_productsubclasslevel2cd                       STRING,
    productiongrouphierarchy_productsubclasslevel2_productsubclasslevel2nm                       STRING,
    corpitemreference_upcid                       STRING,
    corpitemreference_upccomponents_packind                       STRING,
    corpitemreference_upccomponents_manufacturerid                       STRING,
    corpitemreference_upccomponents_salesid                       STRING,
    corpitemreference_upccomponents_countryid                       STRING,
    corpitemreference_upccomponents_systemid                       STRING,
    corpitemreference_upccomponents_checkdigit                       STRING,
    corpitemreference_statuscd                       STRING,
    corpitemreference_packnutrientind                       STRING,
    corpitemreference_nutrienviritemcd                       STRING,
    corpitemreference_prefcicseqnbr                       STRING,
    corpitemreference_prefciclockind                       STRING,
    rogitemreference_rogcd                       STRING,
    rogitemreference_upcid                       STRING,
    rogitemreference_upccomponents_packind                       STRING,
    rogitemreference_upccomponents_manufacturerid                       STRING,
    rogitemreference_upccomponents_salesid                       STRING,
    rogitemreference_upccomponents_countryid                       STRING,
    rogitemreference_upccomponents_systemid                       STRING,
    rogitemreference_upccomponents_checkdigit                       STRING,
    rogitemreference_statuscd                       STRING,
    rogitemreference_primaryupcind                       STRING,
    rogitemreference_retailsectioncd                       STRING,
    rogitemreference_retailsectionnm                       STRING,
    rogitemreference_packnutrientind                       STRING,
    rogitemreference_nutrienviritemcd                       STRING,
    rogitemreference_hazardousitemind                       STRING,
    rogitemreference_retailstatusind                       STRING,
    rogitemreference_optionalorderind                       STRING,
    rogitemreference_orderguide_newitemind                       STRING,
    rogitemreference_orderguide_suppressedind                       STRING,
    rogitemreference_orderguide_displaygroupsuppressedind                       STRING,
    rogitemreference_itemtypecd                       STRING,
    rogitemreference_productsourceind                       STRING,
    rogitemreference_itemondsdind                       STRING,
    rogitemreference_producttypecd                       STRING,
    rogitemreference_offinvoiceincostind                       STRING,
    commongroup_commoncd                       STRING,
    commongroup_commoncostsubcd                       STRING,
    commongroup_likeitemcomparecd                       STRING,
    commongroup_commonretailcd                       STRING,
    commongroup_commonpromotioncd                       STRING,
    commongroup_comparisonitemtypecd                       STRING,
    itemstatus_corpitemstatus_statuscd                       STRING,
    itemstatus_corpitemstatus_statuseffdt                       STRING,
    itemstatus_corpitemstatus_createdt                       STRING,
    itemstatus_warehouseitemstatus_statuscd                       STRING,
    itemstatus_warehouseitemstatus_statuseffdt                       STRING,
    itemstatus_warehouseitemstatus_createdt                       STRING,
    itemdsc_warehouseitemdsc                       STRING,
    itemdsc_internetitemdsc                       STRING,
    itemdsc_retailitemdsc                       STRING,
    itemdsc_vendoritemdsc                       STRING,
    warehousebuyer_buyerid                       STRING,
    warehousebuyer_buyernm                       STRING,
    warehousebuyer_facilityid                       STRING,
    warehousebuyer_buyerphonenbr                       STRING,
    warehousebuyer_buyeremailid                       STRING,
    warehousebuyer_buyercomment                       STRING,
    vendor_vendorid                       STRING,
    vendor_vendorsubaccountnbr                       STRING,
    vendor_warehousevendorid                       STRING,
    vendor_pacsvendornbr                       STRING,
    vendor_vendorconversionfactor                       STRING,
    vendor_vendorupc                       STRING,
    vendor_vendorproductnbr                       STRING,
    vendor_vendoritemdimensions_vendorpackcd                       STRING,
    vendor_vendoritemdimensions_vendorpackcube                       STRING,
    vendor_vendoritemdimensions_palletlayer                       STRING,
    vendor_vendoritemdimensions_palletheight                       STRING,
    vendor_vendoritemdimensions_itemunitnbr                       STRING,
    vendor_vendoritemdimensions_itemsizenbr                       STRING,
    vendor_vendoritemdimensions_uomcd                       STRING,
    vendor_vendorcostareacd                       STRING,
    vendor_vendorservicelevel                       STRING,
    vendor_vendornm                       STRING,
    vendor_vendordunsnbr                       STRING,
    vendor_leadvendorind                       STRING,
    vendor_vendorcontact_contactnm                       STRING,
    vendor_vendorcontact_phonenbr                       STRING,
    vendor_vendorcontact_emailaddresstxt                       STRING,
    vendor_address_addressusagetypecd                       STRING,
    vendor_address_addressline1txt                       STRING,
    vendor_address_addressline2txt                       STRING,
    vendor_address_citynm                       STRING,
    vendor_address_countynm                       STRING,
    vendor_address_postalzonecd                       STRING,
    vendor_address_statecd                       STRING,
    vendor_address_countrycd                       STRING,
    vendor_address_latitudedegree                       STRING,
    vendor_address_longitudedegree                       STRING,
    vendor_address_timezonecd                       STRING,
    vendor_address_phonenbr                       STRING,
    vendor_address_faxnbr                       STRING,
    shelfunitdimensions_shelfunitsizedsc                       STRING,
    shelfunitdimensions_sizeqty                       STRING,
    shelfunitdimensions_sizeuomcd                       STRING,
    shelfunitdimensions_alternatesizeind                       STRING,
    shelfunitdimensions_alternatesizedsc                       STRING,
    shelfunitdimensions_itemheight                       STRING,
    shelfunitdimensions_itemdepth                       STRING,
    shelfunitdimensions_itemwidth                       STRING,
    shelfunitdimensions_itempackuomcd                       STRING,
    shelfunitdimensions_itemwt                       STRING,
    shelfunitdimensions_itemwtuom                       STRING,
    shelfunitdimensions_innerpackqty                       STRING,
    shelfunitdimensions_shelfpackagecd                       STRING,
    shipunitdimensions_shipunitpacktypecd                       STRING,
    shipunitdimensions_shipunitpackqty                       STRING,
    shipunitdimensions_shipunitwt                       STRING,
    shipunitdimensions_shipunitwtuomcd                       STRING,
    storageunitdimensions_warehouseunitwidth                       STRING,
    storageunitdimensions_warehouseunitlength                       STRING,
    storageunitdimensions_warehouseunitheight                       STRING,
    storageunitdimensions_warehousecube                       STRING,
    storageunitdimensions_warehousemeasureuomcd                       STRING,
    storageunitdimensions_warehouseunitwt                       STRING,
    storageunitdimensions_warehouseunitwtuomcd                       STRING,
    storageunitdimensions_palletlayer                       STRING,
    storageunitdimensions_palletheight                       STRING,
    storageunitdimensions_palletstacklimitnbr                       STRING,
    warehousestationid                       STRING,
    brand_brandcd                       STRING,
    brand_brandnm                       STRING,
    usage_itemusageind                       STRING,
    usage_itemusagetypecd                       STRING,
    billing_billingtypeind                       STRING,
    billing_multideptbillingind                       STRING,
    tcacd                       STRING,
    litreequifactor                       STRING,
    displayitemind                       STRING,
    assortedpackind                       STRING,
    nutrienvirqualitiyind                       STRING,
    manufacturertypeind                       STRING,
    tariffitemcd                       STRING,
    tarifftreatmentcd                       STRING,
    restricteddrugitemind                       STRING,
    healthmarkind                       STRING,
    jurisdictionind                       STRING,
    bottledepositind                       STRING,
    bottledepositcd                       STRING,
    bestballind                       STRING,
    incompatibilitycd                       STRING,
    scalepretextind                       STRING,
    cool_countryoforiginitemind                       STRING,
    cool_countryoforiginlabelingclasscd                       STRING,
    biologicalterroractind                       STRING,
    haccpcd                       STRING,
    ethnicitemtypecd                       STRING,
    seasonalitemtypecd                       STRING,
    seasonalitemtypenm                       STRING,
    specialpackagingtypecd                       STRING,
    organicitemind                       STRING,
    onetimebuyind                       STRING,
    branchitemcd                       STRING,
    chargecustomerind                       STRING,
    alternatecic                       STRING,
    substitutecic                       STRING,
    dealind                       STRING,
    restricteditemind                       STRING,
    fullcasepack                       STRING,
    productionweight                       STRING,
    selecteditemcd                       STRING,
    randomweightcd                       STRING,
    shelflifedys                       STRING,
    pulldateind                       STRING,
    onorderingind                       STRING,
    ordermodelcd                       STRING,
    forcedqty                       STRING,
    backorderedqty                       STRING,
    itemleadtime                       STRING,
    orderpackqty                       STRING,
    buyercasecube                       STRING,
    seasonalweeknbr                       STRING,
    itemclasscd                       STRING,
    supplysourcetype                       STRING,
    cmrnbr                       STRING,
    itemhandlingcd                       STRING,
    staterestrictions                       STRING,
    dsdreceivingind                       STRING,
    specialmessagecd                       STRING,
    butterfatpercent                       STRING,
    stackabilitycd                       STRING,
    safetystockqty                       STRING,
    initialorderqty                       STRING,
    overseasreferencenbr                       STRING,
    promotionalorderdt                       STRING,
    investmentorderdt                       STRING,
    warehouseinterfaceind                       STRING,
    warehouselotcd                       STRING,
    rebillpartyind                       STRING,
    internetitemind                       STRING,
    buyingprocesscd                       STRING,
    purchaserid                       STRING,
    itemsetnbr                       STRING,
    transferlevelcd                       STRING,
    transferlevelmethodid                       STRING,
    picktolightcaseunitqty                       STRING,
    picktolightfullpalletind                       STRING,
    scanitemind                       STRING,
    warehousealtid                       STRING,
    distributioncenteraltid                       STRING,
    orgentitytype                       STRING,
    orgentityvalue                       STRING,
    orgentitynm                       STRING,
    defaultwarehouseitemind                       STRING  
  )
    PARTITIONED BY(
     batch_id  BIGINT
  )
    ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '|'
  STORED AS TEXTFILE
;

USE ${DB_WORK}
;

MSCK REPAIR TABLE history_supply_item
;



--###############################################################################
--#                                     End                                     #
--###############################################################################

