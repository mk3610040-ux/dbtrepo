--select * from DEV_DB.DEV_SCHEMA.CUSTOMERS
select * from {{ source('s1','customers')}}