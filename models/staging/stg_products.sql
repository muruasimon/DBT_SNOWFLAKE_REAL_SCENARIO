with raw_products as (
    select
        P_PARTKEY as product_id,
        P_NAME as product_name,
        P_MFGR as manufacturer
        P_CATEGORY as category,
        P_BRAND as brand,
        P_TYPE as type,
        P_SIZE as size,
        P_CONTAINER as container
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.PART
)

select
    product_id,
    product_name,
    manufacturer,
    category,
    brand,
    type,
    size,
    container
--from raw_products
