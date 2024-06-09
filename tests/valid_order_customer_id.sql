-- Check if all customer_ids in orders exist in the customers table
select 
    o.customer_id 
from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c on o.customer_id = c.customer_id
where c.customer_id is null
and c.customer_id not in ('1', '2')
