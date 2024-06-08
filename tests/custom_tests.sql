-- Check if any order has a negative total price
select count(*) from {{ ref('stg_orders') }} where total_price < 0