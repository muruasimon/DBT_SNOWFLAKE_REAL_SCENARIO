with raw_customers as (
    select
        C_CUSTKEY as customer_id,
        C_NAME as name,
        C_ADDRESS as address,
        C_PHONE as phone,
        C_ACCTBAL as account_balance,
        C_MKTSEGMENT as market_segment,
        C_NATIONKEY as nation_key
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
)

select
    customer_id,
    name,
    address,
    phone,
    account_balance,
    market_segment,
    nation_key
from raw_customers
