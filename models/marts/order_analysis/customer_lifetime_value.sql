with customer_orders as (
    select * from {{ ref('stg_orders') }}
)

select 
    customer_id,
    sum(total_price) as lifetime_value
from customer_orders
group by customer_id