with emp as(
    select EMPLOYEEID, EMPLOYEENAME, DEPARTMENTID, MANAGERID
    from {{source('ADHOC','EMPLOYEE')}}

),
dep as(

    selcet DEPARTMENTID, DEPARTMENTNAME from {{source('ADHOC','DEPARTMENT')}}
)
select * from emp e join dep d on e.DEPARTMENTID = d.DEPARTMENTID
