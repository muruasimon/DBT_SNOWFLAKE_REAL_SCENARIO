{% snapshot customer_snapshots %}
    {{
        config(
          target_schema='snapshots',
          unique_key='customer_id',
          strategy='timestamp',
          updated_at='last_updated'
        )
    }}

    select * from {{ ref('stg_customers') }}

{% endsnapshot %}