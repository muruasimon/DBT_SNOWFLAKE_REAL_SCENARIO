{% set date_filter = "2023-01-01" %}

with raw_orders as (
    select
        O_ORDERKEY as order_id,
        O_CUSTKEY as customer_id,
        O_ORDERSTATUS as order_status,
        O_TOTALPRICE as total_price,
        O_ORDERDATE as order_date
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
)

select
    order_id,
    customer_id,
    order_status,
    total_price,
    order_date
from raw_orders
where order_date >= '{{ date_filter }}'
