

{{config(materialized = 'table')}}

with emp_data as(
    select empno, ename, job, sal from public.emp
)
select * from emp_data
