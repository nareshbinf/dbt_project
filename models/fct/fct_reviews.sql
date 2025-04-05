with src_reviews as(
    select * from {{ref('src_reviews')}}
)
select * from src_reviews
where REVIEW_TEXT IS NOT NULL