-- Check if there are duplicate customer_ids
select 
    customer_id, 
    count(*) 
from {{ ref('stg_customers') }}
group by customer_id
having count(*) > 1
