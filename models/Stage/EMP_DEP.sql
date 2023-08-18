with emp as(
    select 
    *
    from {{ref('employee_detail')}}

)

    select * from emp;
