-- below {{()}} code inside is in 'jinja'
-- {{(config(materialized = 'view'))}}
-- {{(config(version = '0.0.21'))}}
-- in the project file.yml we have mentined that everything should go as  table,
-- but here we are specifically mentionining that the the materializaation is 
--of the type view 

-- the setting mentioned here will be given priority over the dbt_project.yml file

with versicolor as 
(
    select * from  DB_ECOMMERCE.DBT_SNF_BRIDGE.FLOWERS_SNOWFLAKE_BRIDGE
    where SPECIES = 'versicolor'
)

select * from versicolor
