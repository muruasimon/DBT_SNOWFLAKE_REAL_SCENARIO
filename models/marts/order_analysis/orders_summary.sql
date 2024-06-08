with order_data as (
    select * from {{ ref('stg_orders') }}
)

select 
    order_status,
    count(order_id) as order_count,
    sum({{ default_if_null('total_price', 0) }}) as total_revenue
from order_data
group by order_status