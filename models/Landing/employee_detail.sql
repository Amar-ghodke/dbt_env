with dep as(
    select * from {{source('ADHOC','DEPARTMENT')}}
),
man as (

    select * from {{source('ADHOC','MANAGER')}}

),
EMP AS (

    select * from {{source('ADHOC','EMPLOYEE')}}
)
select EMPLOYEEID,EMPLOYEENAME,d.DEPARTMENTID AS DEPTID,m.MANAGERID AS MNG_ID from emp e join dep d on e.DEPARTMENTID = d.DEPARTMENTID
join man m on m.MANAGERID = e.MANAGERID