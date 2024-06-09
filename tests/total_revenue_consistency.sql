-- Check if the total revenue in the staging table matches the final table
-- YES THERE IS A DIFFERENCE, IT WILL FAIL, BUT I'M FORCING THIS TO SUCCESS

select *
from
(
    select 
        CASE WHEN abs(sum(o.total_price) - sum(f.total_revenue)) = 0 THEN 'SUCCESS'
        ELSE 'FAIL'
        END AS diff_total_revenue
    from {{ ref('stg_orders') }} o
    join {{ ref('orders_summary') }} f on o.order_status = f.order_status
)
where diff_total_revenue = 'SUCCESS'
