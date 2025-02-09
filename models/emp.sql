

{{config(materialized = 'table')}}

with emp_data as(
    select * from public.emp
)
select * from emp_data