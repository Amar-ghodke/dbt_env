with demo as(
    select * from {{source('ADHOC'.'DEPARTMENT')}}
)