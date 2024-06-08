with customers as (
    select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
),
joined_customers as (
    select 
        c.c_custkey as customer_id,
        c.c_name as customer_name,
        c.c_nationkey as nation_id,
        r.region_name as region_name
    from customers c
    join {{ ref('region_data') }} r on c.c_nationkey = r.region_id
)

select * from joined_customers