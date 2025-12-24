select CUSTOMER_ID,
trim(upper(CUSTOMER_NAME)) as CUSTOMER_NAME,
country
from {{source('public','CUSTOMERS')}}