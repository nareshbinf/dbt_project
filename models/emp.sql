

{{config(materialized = 'table')}}

with emp_data as(
    select * from {{source('dbt_source', 'emp')}}
)
select * from emp_data