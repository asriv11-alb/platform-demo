
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

MSCK REPAIR TABLE increment_upc_product
;

INSERT OVERWRITE TABLE ${DB_WORK}.temp_upc_product
  SELECT T1.*
    FROM ${DB_WORK}.current_upc_product T1
    LEFT OUTER JOIN ${DB_WORK}.increment_upc_product T2
    ON (
    T1.upc_id=T2.upc_id     )
    WHERE
    T2.upc_id IS NULL 
 UNION
  SELECT
            s_no,
            upc_id,
            corporation_id,
            upc_dsc,
            internet_item_dsc,
            subsubclass_id,
            subsclass_nm,
            subclass_id,
            subclass_nm,
            class_id,
            class_nm,
            category_id,
            category_nm,
            group_id,
            group_nm,
            dept_section_id,
            dept_section_nm,
            department_id,
            department_nm,
            corp_item_cd,
            feed_cd,
            max_last_update_ts,
            genrt_cic_id,
            csc_id,
            prm_upc_ind,
            prm_upc_lock_ind,
            prm_upc_last_upd_dt,
            prm_upc_upd_mtd_cd,
            upc_stat_cd,
            upc_create_dt,
            scan_unit_ind,
            eq_unit_fctr,
            swy_upc_ind,
            common_retail_cd,
            common_promo_cd,
            brand_cd,
            manuf_type_cd,
            digital_media_group_cd
        FROM (SELECT *,
     MAX(last_update_ts) OVER (PARTITION
   BY upc_id ) AS max_last_update_ts
            FROM ${DB_WORK}.increment_upc_product) AS SUB
    WHERE last_update_ts = max_last_update_ts;


--#############################################################################
--#                                   End                                     #
--#############################################################################

