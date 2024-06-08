with customer_data as (
    select * from {{ ref('stg_customers') }}
)

select 
    region_name,
    count(distinct customer_id) as customer_count
from customer_data
group by region_name