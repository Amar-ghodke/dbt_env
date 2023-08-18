with
    active as (
        select
            * FROM {{REF('googlesheet_to_snwflake')}}
    )
select
    external_id_vod_c,
    a.id,
    a.recordtypeid,
    a.firstname,
    a.middle_vod_c,
    a.lastname,
    a.name,
    a.npi_vod_c,
    a.credentials_vod_c,
    a.personemail,
    a.gender_vod_c,
    a.account_identifier_vod_c,
    a.fax,
    a.me_c,
    a.phone,
    a.primary_parent_vod_c,
    a.salutation,
    a.suffix_vod_c,
    a.systemmodstamp,
    a.target_c,
    a.website
from active a
left join
    {{ source("GOOGLE_SHEETS", "Target") }} y on a.npi_vod_c = y.npi

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
    
