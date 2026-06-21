{% snapshot status_check %}

{{
    config(
      target_schema='dev_schema',
      target_database='dEV_DB',
      unique_key='tid',
      strategy='check',
      check_cols=['status']
    )
}}

select * from {{ source('s1', 't_ticket') }}

{% endsnapshot %}
