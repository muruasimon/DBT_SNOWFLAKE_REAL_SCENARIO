-- Check if all order_status values are valid
select *
from {{ ref('stg_orders') }}
where order_status not in ('O', 'F', 'P')
