with dep as(
    select * from {{source('ADHOC','DEPARTMENT')}}
),
man as (

    select * from {{source('ADHOC','MANAGER')}}

),
EMP AS (

    select * from {{source('ADHOC','EMPLOYEE')}}
)