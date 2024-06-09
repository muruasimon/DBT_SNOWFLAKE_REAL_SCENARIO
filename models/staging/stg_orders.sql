with orders as (
    select * from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
),
joined_orders as (
    select 
        o.o_orderkey as order_id,
        o.o_custkey as customer_id,
        o.o_orderstatus as order_status,
        o.o_totalprice as total_price,
        o.o_orderdate as order_date,
        r.region_name as region_name
    from orders o
    join {{ ref('region_data') }} r on o.o_custkey = r.region_id
)

select * from joined_orders

