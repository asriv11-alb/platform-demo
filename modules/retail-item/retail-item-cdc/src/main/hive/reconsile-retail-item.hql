
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

MSCK REPAIR TABLE increment_retail_item
;

INSERT OVERWRITE TABLE ${DB_WORK}.temp_retail_item
  SELECT T1.*
    FROM ${DB_WORK}.current_retail_item T1
    LEFT OUTER JOIN ${DB_WORK}.increment_retail_item T2
    ON (
    T1.employee_sk=T2.employee_sk AND
    T1.document_releaseid=T2.document_releaseid     )
    WHERE
    T2.employee_sk IS NULL AND
    T2.document_releaseid IS NULL 
 UNION
  SELECT
            max_creationtm,
            employee_sk,
            document_releaseid,
            document_versionid,
            document_systemenvironmentcd,
            document_documentid,
            document_alternatedocumentid,
            document_inboundoutboundind,
            document_documentnm,
            document_creationdt,
            document_description,
            document_description_type,
            document_sourceapplicationcd,
            document_targetapplicationcd,
            document_note_type,
            document_gatewaynm,
            document_senderid_qualifiercd,
            document_receiverid_qualifiercd,
            document_routingsystemnm,
            document_internalfiletransferind,
            document_interchangedate,
            document_interchangetime,
            document_externaltargetind,
            documentaction_actiontypecd,
            documentaction_recordtypecd,
            corporationid,
            divisionid,
            rogcd,
            corporateitemcd,
            retailscancd_upcnbr,
            retailscancd_upctxt,
            producthierarchy_productgroup_productgroupcd,
            producthierarchy_productgroup_productgroupnm,
            productcategorycd_productcategorycd,
            productcategorycd_productcategorynm,
            productclasscd_productclasscd,
            productclasscd_productclassnm,
            productclasscd_retailsectioncd,
            productsubclasslevel1_productsubclasslevel1cd,
            productsubclasslevel1_productsubclassleve1nm,
            productsubclasslevel2_productsubclasslevel2cd,
            productsubclasslevel2_productsubclasslevel2nm,
            itemdsc_positemdsc,
            itemdsc_retailitemdsc,
            itemdsc_internetitemdsc,
            itemdsc_warehouseitemdsc,
            itemdsc_vendoritemdsc,
            itemid_upc_upcnbr,
            itemid_upc_upctxt,
            itemid_upccomponents_manufacturerid,
            itemid_upccomponents_salesid,
            itemid_upccomponents_countryid,
            itemid_upccomponents_systemid,
            itemid_upccomponents_checkdigit,
            itemid_gtinid,
            itemid_vendorproductid,
            itemid_manufproductid,
            itemid_systemspecificitemid,
            itemid_rfid,
            itemid_internalitemid,
            itemid_branchitemcd,
            itemid_itemdescription,
            pricelookupcd,
            shelfunitdimensions_shelfunitsizedsc,
            shelfunitdimensions_sizeqty,
            shelfunitdimensions_sizeuomcd,
            shelfunitdimensions_alternatesizeind,
            shelfunitdimensions_alternatesizedsc,
            shelfunitdimensions_itemheight,
            shelfunitdimensions_itemdepth,
            shelfunitdimensions_itemwidth,
            shelfunitdimensions_itempackuomcd,
            shelfunitdimensions_itemwt,
            shelfunitdimensions_itemwtuom,
            shelfunitdimensions_innerpackqty,
            shelfunitdimensions_shelfpackagecd,
            scaleunitdimension_netweight,
            scaleunitdimension_netweightuom,
            scaleunitdimension_scalepackagetype,
            scaleunitdimension_packagesize,
            scaleunitdimension_packagecolor,
            scaleunitdimension_packagesoakpadind,
            commonitemgroup_commonretailcd,
            commonitemgroup_commonpromotioncd,
            commonitemgroup_consumersellingcd,
            commonitemgroup_comparisonitemtypecd,
            itemsourcingtype,
            commonitemgroup_dsdind,
            commonitemgroup_warehouseind,
            commonitemgroup_manufacturingplantind,
            commonitemgroup_wholesaleind,
            commonitemgroup_storecreateditemind,
            retailstorelevelattributes_retailstoreid,
            retailstorelevelattributes_corporateitemcd,
            retailstorelevelattributes_itemsourcingtype_dsdind,
            retailstorelevelattributes_itemsourcingtype_warehouseind,
            retailstorelevelattributes_itemsourcingtype_manufacturingplantind,
            retailstorelevelattributes_itemsourcingtype_wholesaleind,
            retailstorelevelattributes_itemsourcingtype_storecreateditemind,
            retailstorelevelattributes_wicitemind,
            retailstorelevelattributes_fsaeligibleind,
            retailstorelevelattributes_bottledepositcd,
            brand_brandcd,
            brand_brandnm,
            ringtypecd,
            demographiccd,
            foodstampcd,
            hiconeind,
            tradingstampcd,
            salesrestrictioncd,
            vendorcoupongroupcd,
            mixandmatchgroupcd,
            departmentoverridecd,
            unitpricemeasurecd,
            pricercommenttxt,
            reviewcd,
            lastfilemaintenancedt,
            scaledata_scaleshelflifeusebydays,
            scaledata_scalemessagecd,
            scaledata_scaleactionnbr,
            scaledata_scaledestcd,
            scaledata_scalegradecd,
            scaledata_scaleactioncd,
            scaledata_sellbydaysnbr,
            scaledata_scalepullbydaysnbr,
            scaledata_scalegraphic1nbr,
            scaledata_scalegraphic2nbr,
            scaledata_scaleplucd,
            coupontypeind,
            couponfamilycd,
            pricerequiredind,
            noncashaccountnbr,
            noncashaccounttype,
            signcount1,
            signcount2,
            signcount3,
            niminfoind,
            subclubgroup1id,
            subclubgroup2id,
            giftcardtypeind,
            organicitemind,
            hazardousitemind,
            hazardousclasscd,
            hazardousclassdsc,
            orgmasternametype_orgentitytype,
            orgmasternametype_orgentityvalue,
            orgmasternametype_orgentitynm
        FROM (SELECT *,
     MAX(creationtm) OVER (PARTITION
   BY employee_sk ,document_releaseid ) AS max_creationtm
            FROM ${DB_WORK}.increment_retail_item) AS SUB
    WHERE creationtm = max_creationtm;


--#############################################################################
--#                                   End                                     #
--#############################################################################

