with Active as (
select 
EXTERNAL_ID_VOD_C
,ID
,RECORDTYPEID
,FIRSTNAME
,MIDDLE_VOD_C
,LASTNAME
,NAME
,NPI_VOD_C
,CREDENTIALS_VOD_C
,PERSONEMAIL
,GENDER_VOD_C
,ACCOUNT_IDENTIFIER_VOD_C
,FAX
,ME_C
,PHONE
,PRIMARY_PARENT_VOD_C
,SALUTATION
--,SPECIALTY_2_VOD_C
,SUFFIX_VOD_C
,SYSTEMMODSTAMP
,TARGET_C
,WEBSITE
from google_sheets.GOOGLE_SHEETS 
where id is not null and NPI_VOD_C is not null and len(NPI_VOD_C)=10 and CNX_ACCOUNT_STATUS_C='Active')
select * from Active

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
