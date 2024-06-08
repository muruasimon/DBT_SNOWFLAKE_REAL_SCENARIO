{% snapshot order_snapshots %}
    {{
        config(
          target_schema='snapshots',
          unique_key='order_id',
          strategy='timestamp',
          updated_at='order_date'
        )
    }}

    select * from {{ ref('stg_orders') }}

{% endsnapshot %}