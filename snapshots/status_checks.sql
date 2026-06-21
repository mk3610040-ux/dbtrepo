{% snapshot snapshot_name %}
    {{
        config(
            target_schema='dev_schema',
            target_database='dev_db',
            unique_key='tid',
            strategy='check',
            check_cols=['status']
        )
    }}

    select * from {{ source('s1', 't_ticket') }}
 {% endsnapshot %}