-- Check if any total_price is lower than zero
select top 1 order_id from {{ ref('stg_orders') }} where total_price < 0