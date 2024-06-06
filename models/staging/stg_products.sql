with
    raw_products as (
        select
            p_partkey as product_id,
            p_name as product_name,
            p_mfgr as manufacturer,
           -- p_category as category,
            p_brand as brand,
            p_type as type,
            p_size as size,
            p_container as container
        from snowflake_sample_data.tpch_sf1.part
    )

select
    product_id,
    product_name,
    manufacturer,
   -- category,
    brand,
    type,
    size,
    container
    from raw_products
    
