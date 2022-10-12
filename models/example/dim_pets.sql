{{ config(materialized='table') }}



with pets as (

SELECT TRIM(TRIM(split_part(PETS, ',',1),'"'),'["') as Pet_1,
TRIM(TRIM(split_part(PETS, ',',2),'"'),'"]')as Pet_2
,TRIM(TRIM(split_part(ADDRESS, ',',1),'"'),'{"Permanent address":"') AS Permanent_address
,TRIM(TRIM(TRIM(TRIM(split_part(ADDRESS, ',',2),'"'),'"current Address"'),':"'),'"}') AS current_Address,
NAME as Name,MOBILE as Mobile
from DEV_METAMART.METAMART_DATA.DEMOTEST )


select *
from pets





