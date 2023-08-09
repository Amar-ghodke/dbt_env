with call_detail as (
	select CALL_2_VOD_C,CREATEDBYID,CREATEDDATE,id from {{ source('s3','CALL_DETAIL')}} where _file ='AWS_POC_test/CALL_DETAIL.csv'),
	calls as (select CALL_ID,CALL_NAME,ACCOUNT_ID,CALL_STATUS,CALL_DATE_TIME,CALL_TYPE,TERRITORY,ADDRESS_LINE_1,ADDRESS_LINE_2,
    CITY,STATE,ZIP_CODE,LOCATION_ID,SPECIALTY,NPI,PARENT_CALL_ID from {{ source('s3','CALL_DETAIL')}} where _file ='AWS_POC_test/CALL.csv'),
	addrss as (select * from {{ source('s3','CALL_DETAIL')}} where _file ='AWS_POC_test/Address.csv'),
	account as (select * from {{ source('s3','CALL_DETAIL')}} where _file ='AWS_POC_test/Account.csv'),
	call_plan as (select * from {{ source('s3','CALL_DETAIL')}} where _file ='AWS_POC_test/CALL_PLAN.csv'),
	username as (select * from {{ source('s3','CALL_DETAIL')}} where _file ='AWS_POC_test/username.csv')

	select * from call_detail cd join calls c on c.call_id=cd.CALL_2_VOD_C