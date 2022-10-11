{{ config(materialized='table') }}


Create or replace table DEV_METAMART.METAMART_DATA.Dim_Pets
(
    Pet_1 Varchar(50),
    Pet_2 Varchar(50),
    Permanent_address Varchar(50),
    current_Address Varchar(50),
    Name Varchar(50),
    Mobile Varchar(50)
);

Insert into DEV_METAMART.METAMART_DATA.Dim_Pets(Pet_1,Pet_2,Permanent_address,current_Address,Name,Mobile)
SELECT TRIM(TRIM(split_part(PETS, ',',1),'"'),'["') as Pet_1,
TRIM(TRIM(split_part(PETS, ',',2),'"'),'"]')as Pet_2
,TRIM(TRIM(split_part(ADDRESS, ',',1),'"'),'{"Permanent address":"') AS Permanent_address
,TRIM(TRIM(TRIM(TRIM(split_part(ADDRESS, ',',2),'"'),'"current Address"'),':"'),'"}') AS current_Address,
NAME as Name,MOBILE as Mobile
from DEV_METAMART.METAMART_DATA.DEMOTEST ;



SELECT TRIM(TRIM(split_part(PETS, ',',1),'"'),'["') as Pet_1,
TRIM(TRIM(split_part(PETS, ',',2),'"'),'"]')as Pet_2
,TRIM(TRIM(split_part(ADDRESS, ',',1),'"'),'{"Permanent address":"') AS Permanent_address
,TRIM(TRIM(TRIM(TRIM(split_part(ADDRESS, ',',2),'"'),'"current Address"'),':"'),'"}') AS current_Address,
NAME as Name,MOBILE as Mobile
from DEV_METAMART.METAMART_DATA.DEMOTEST;