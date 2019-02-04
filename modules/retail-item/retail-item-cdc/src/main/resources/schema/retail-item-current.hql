
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
    ${DB_WORK}.current_retail_item
;

CREATE TABLE ${DB_WORK}.current_retail_item
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
    document_description                       STRING,
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
    documentaction_actiontypecd                       STRING,
    documentaction_recordtypecd                       STRING,
    corporationid                       STRING,
    divisionid                       STRING,
    rogcd                       STRING,
    corporateitemcd                       STRING,
    retailscancd_upcnbr                       STRING,
    retailscancd_upctxt                       STRING,
    producthierarchy_productgroup_productgroupcd                       STRING,
    producthierarchy_productgroup_productgroupnm                       STRING,
    productcategorycd_productcategorycd                       STRING,
    productcategorycd_productcategorynm                       STRING,
    productclasscd_productclasscd                       STRING,
    productclasscd_productclassnm                       STRING,
    productclasscd_retailsectioncd                       STRING,
    productsubclasslevel1_productsubclasslevel1cd                       STRING,
    productsubclasslevel1_productsubclassleve1nm                       STRING,
    productsubclasslevel2_productsubclasslevel2cd                       STRING,
    productsubclasslevel2_productsubclasslevel2nm                       STRING,
    itemdsc_positemdsc                       STRING,
    itemdsc_retailitemdsc                       STRING,
    itemdsc_internetitemdsc                       STRING,
    itemdsc_warehouseitemdsc                       STRING,
    itemdsc_vendoritemdsc                       STRING,
    itemid_upc_upcnbr                       STRING,
    itemid_upc_upctxt                       STRING,
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
    pricelookupcd                       STRING,
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
    scaleunitdimension_netweight                       STRING,
    scaleunitdimension_netweightuom                       STRING,
    scaleunitdimension_scalepackagetype                       STRING,
    scaleunitdimension_packagesize                       STRING,
    scaleunitdimension_packagecolor                       STRING,
    scaleunitdimension_packagesoakpadind                       STRING,
    commonitemgroup_commonretailcd                       STRING,
    commonitemgroup_commonpromotioncd                       STRING,
    commonitemgroup_consumersellingcd                       STRING,
    commonitemgroup_comparisonitemtypecd                       STRING,
    itemsourcingtype                       STRING,
    commonitemgroup_dsdind                       STRING,
    commonitemgroup_warehouseind                       STRING,
    commonitemgroup_manufacturingplantind                       STRING,
    commonitemgroup_wholesaleind                       STRING,
    commonitemgroup_storecreateditemind                       STRING,
    retailstorelevelattributes_retailstoreid                       STRING,
    retailstorelevelattributes_corporateitemcd                       STRING,
    retailstorelevelattributes_itemsourcingtype_dsdind                       STRING,
    retailstorelevelattributes_itemsourcingtype_warehouseind                       STRING,
    retailstorelevelattributes_itemsourcingtype_manufacturingplantind                       STRING,
    retailstorelevelattributes_itemsourcingtype_wholesaleind                       STRING,
    retailstorelevelattributes_itemsourcingtype_storecreateditemind                       STRING,
    retailstorelevelattributes_wicitemind                       STRING,
    retailstorelevelattributes_fsaeligibleind                       STRING,
    retailstorelevelattributes_bottledepositcd                       STRING,
    brand_brandcd                       STRING,
    brand_brandnm                       STRING,
    ringtypecd                       STRING,
    demographiccd                       STRING,
    foodstampcd                       STRING,
    hiconeind                       STRING,
    tradingstampcd                       STRING,
    salesrestrictioncd                       STRING,
    vendorcoupongroupcd                       STRING,
    mixandmatchgroupcd                       STRING,
    departmentoverridecd                       STRING,
    unitpricemeasurecd                       STRING,
    pricercommenttxt                       STRING,
    reviewcd                       STRING,
    lastfilemaintenancedt                       STRING,
    scaledata_scaleshelflifeusebydays                       STRING,
    scaledata_scalemessagecd                       STRING,
    scaledata_scaleactionnbr                       STRING,
    scaledata_scaledestcd                       STRING,
    scaledata_scalegradecd                       STRING,
    scaledata_scaleactioncd                       STRING,
    scaledata_sellbydaysnbr                       STRING,
    scaledata_scalepullbydaysnbr                       STRING,
    scaledata_scalegraphic1nbr                       STRING,
    scaledata_scalegraphic2nbr                       STRING,
    scaledata_scaleplucd                       STRING,
    coupontypeind                       STRING,
    couponfamilycd                       STRING,
    pricerequiredind                       STRING,
    noncashaccountnbr                       STRING,
    noncashaccounttype                       STRING,
    signcount1                       STRING,
    signcount2                       STRING,
    signcount3                       STRING,
    niminfoind                       STRING,
    subclubgroup1id                       STRING,
    subclubgroup2id                       STRING,
    giftcardtypeind                       STRING,
    organicitemind                       STRING,
    hazardousitemind                       STRING,
    hazardousclasscd                       STRING,
    hazardousclassdsc                       STRING,
    orgmasternametype_orgentitytype                       STRING,
    orgmasternametype_orgentityvalue                       STRING,
    orgmasternametype_orgentitynm                       STRING  
  )
  ROW FORMAT DELIMITED
  FIELDS TERMINATED BY '|'
  STORED AS TEXTFILE
;


--###############################################################################
--#                                     End                                     #
--###############################################################################

