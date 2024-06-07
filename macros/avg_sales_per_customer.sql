{% macro avg_sales_per_customer() %}
    select
        customer_id,
        avg(total_price) as avg_sale_amount
    from {{ ref('stg_orders') }}
    group by customer_id
{% endmacro %}
