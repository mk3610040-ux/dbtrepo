--select * from DEV_DB.DEV_SCHEMA.CUSTOMERS
{{
    config(
        materialized='table',
        transient=false
    )
}}
select * from {{ source('s1','customers')}}