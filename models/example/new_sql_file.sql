with Active as (
select 
x.EXTERNAL_ID_VOD_C
,x.ID
,x.RECORDTYPEID
,x.FIRSTNAME
,x.MIDDLE_VOD_C
,x.LASTNAME
,x.NAME
,x.NPI_VOD_C
,x.CREDENTIALS_VOD_C
from {{ source('GOOGLE_SHEETS', 'GOOGLE_SHEETS') }} X
where id is not null and NPI_VOD_C is not null and len(NPI_VOD_C)=10)
select 
EXTERNAL_ID_VOD_C
ID
RECORDTYPEID
FIRSTNAME
MIDDLE_VOD_C
LASTNAME
NAME
NPI_VOD_C
CREDENTIALS_VOD_C 
from Active left join {{ source('GOOGLE_SHEETS', 'Target') }} Y on X.NPI_VOD_C = Y.npi

/*
    Getting the records from google sheet where id,npi_vod_c is not null and 
    lenght of npi is 10 alsoit will give the records which are active.




0123h000000tpP0AAI
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"


git commit -m "commit message"
git remote add origin git@github.com:Amar-ghodke/dbt_env.git
git push -u origin main

git remote add origin git@github.com:Amar-ghodke/dbt_env.git

*/
