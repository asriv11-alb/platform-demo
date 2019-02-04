
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
    ${DB_WORK}.history_upc_product
;

CREATE EXTERNAL TABLE IF NOT EXISTS ${DB_WORK}.history_upc_product
  (
    s_no                       STRING,
    upc_id                       STRING,
    corporation_id                       STRING,
    upc_dsc                       STRING,
    internet_item_dsc                       STRING,
    subsubclass_id                       STRING,
    subsclass_nm                       STRING,
    subclass_id                       STRING,
    subclass_nm                       STRING,
    class_id                       STRING,
    class_nm                       STRING,
    category_id                       STRING,
    category_nm                       STRING,
    group_id                       STRING,
    group_nm                       STRING,
    dept_section_id                       STRING,
    dept_section_nm                       STRING,
    department_id                       STRING,
    department_nm                       STRING,
    corp_item_cd                       STRING,
    feed_cd                       STRING,
    last_update_ts                       STRING,
    genrt_cic_id                       STRING,
    csc_id                       STRING,
    prm_upc_ind                       STRING,
    prm_upc_lock_ind                       STRING,
    prm_upc_last_upd_dt                       STRING,
    prm_upc_upd_mtd_cd                       STRING,
    upc_stat_cd                       STRING,
    upc_create_dt                       STRING,
    scan_unit_ind                       STRING,
    eq_unit_fctr                       STRING,
    swy_upc_ind                       STRING,
    common_retail_cd                       STRING,
    common_promo_cd                       STRING,
    brand_cd                       STRING,
    manuf_type_cd                       STRING,
    digital_media_group_cd                       STRING  
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

MSCK REPAIR TABLE history_upc_product
;



--###############################################################################
--#                                     End                                     #
--###############################################################################

