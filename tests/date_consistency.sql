-- Check if order_date is not in the future
select *
from {{ ref('stg_orders') }}
where order_date > current_date()
