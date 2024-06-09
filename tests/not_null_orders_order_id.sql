-- Check if any order_id is null
select top 1 order_id from {{ ref('stg_orders') }} where order_id is null
