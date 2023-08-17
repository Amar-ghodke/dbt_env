with dep as(
    select * from {{source('ADHOC','DEPARTMENT')}}
)