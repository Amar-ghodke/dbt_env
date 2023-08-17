with emp as(
    select * from {{source('ADHOC','EMPLOYEE')}}

),
dep as(

    selcet * from {{source('ADHOC','DEPARTMENT')}}
)
select * from emp e join dep d on e.DEPARTMENTID = d.DEPARTMENTID