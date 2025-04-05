with src_listings as (
    select * from {{ref(src_listings)}}
    )
select 
ID, 
LISTING_URL, 
NAME, 
ROOM_TYPE, 
case when MINIMUM_NIGHTS =0 then 1 else MINIMUM_NIGHTS end as MINIMUM_NIGHTS,
HOST_ID, 
cast(replace(PRICE,'$', ) number(10,2)) as PRICE_num, 
CREATED_AT, 
UPDATED_AT
from src_listings
