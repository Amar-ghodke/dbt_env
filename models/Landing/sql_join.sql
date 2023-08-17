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
,x.PERSONEMAIL
,x.GENDER_VOD_C
,x.ACCOUNT_IDENTIFIER_VOD_C
,x.FAX
,x.ME_C
,x.PHONE
,x.PRIMARY_PARENT_VOD_C
,x.SALUTATION
--,SPECIALTY_2_VOD_C
,x.SUFFIX_VOD_C
,x.SYSTEMMODSTAMP
,x.TARGET_C
,x.WEBSITE
from {{ source('GOOGLE_SHEETS', 'GOOGLE_SHEETS') }} X
where id is not null and NPI_VOD_C is not null and len(NPI_VOD_C)=10)
select 
EXTERNAL_ID_VOD_C
,A.ID
,A.RECORDTYPEID
,A.FIRSTNAME
,A.MIDDLE_VOD_C
,A.LASTNAME
,A.NAME
,A.NPI_VOD_C
,A.CREDENTIALS_VOD_C
,A.PERSONEMAIL
,A.GENDER_VOD_C
,A.ACCOUNT_IDENTIFIER_VOD_C
,A.FAX
,A.ME_C
,A.PHONE
,A.PRIMARY_PARENT_VOD_C
,A.SALUTATION
,A.SUFFIX_VOD_C
,A.SYSTEMMODSTAMP
,A.TARGET_C
,A.WEBSITE 
from Active A left join {{ source('GOOGLE_SHEETS', 'Target') }} Y on A.NPI_VOD_C = Y.NPI

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