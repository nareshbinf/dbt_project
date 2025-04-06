with l as (
    select * from {{ref('dim_listing_cleansed')}}
),

l as (
    select * from {{ref('DIM_HOST_CLEANSED')}}
)

select 
l.ID as listing_id, l.NAME as listing_name, l.ROOM_TYPE, l.MINIMUM_NIGHTS, l.PRICE,
l.HOST_ID, h.NAME as HOST_NAME, 
h.IS_SUPERHOST AS host_is_superhost, l.CREATED_AT, 
greatest(l.UPDATED_AT, h.UPDATED_AT)
from l
left join h on (h.HOST_ID = l.HOST_ID)
