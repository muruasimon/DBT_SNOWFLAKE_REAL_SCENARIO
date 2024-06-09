-- Check if any order_id is null
select count(*) from {{ ref('stg_orders') }} where order_id is null
