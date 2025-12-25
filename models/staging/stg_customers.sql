{{ config(
    materialized='table',
    schema='STAGING'
) }}

select CUSTOMER_ID,
trim(upper(CUSTOMER_NAME)) as CUSTOMER_NAME,
COUNTRY
from {{source('DBT','CUSTOMERS')}}