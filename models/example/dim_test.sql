{{ config(materialized='table') }}



with test as (

SELECT * from DEV_SAP_CO_CDS_VIEWS_DB.SAP_CO_SALES_STG_SCH.SAP_CO_SALES_ORDER_FACT_STAGE
)
select * from test






