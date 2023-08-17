with
    active as (
        select
            x.external_id_vod_c,
            x.id,
            x.recordtypeid,
            x.firstname,
            x.middle_vod_c,
            x.lastname,
            x.name,
            x.npi_vod_c,
            x.credentials_vod_c,
            x.personemail,
            x.gender_vod_c,
            x.account_identifier_vod_c,
            x.fax,
            x.me_c,
            x.phone,
            x.primary_parent_vod_c,
            x.salutation,
            -- ,SPECIALTY_2_VOD_C
            x.suffix_vod_c,
            x.systemmodstamp,
            x.target_c,
            x.website
        from {{ source("GOOGLE_SHEETS", "GOOGLE_SHEETS") }} x
        where id is not null and npi_vod_c is not null and len(npi_vod_c) = 10
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
    
