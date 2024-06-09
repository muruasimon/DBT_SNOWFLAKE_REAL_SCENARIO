-- Check if all total_price values are within the expected range
select *
from {{ ref('stg_orders') }}
where total_price < 0 or total_price > 500000
