with setosa as 
(
    select * from  DB_ECOMMERCE.DBT_SNF_BRIDGE.FLOWERS_SNOWFLAKE_BRIDGE
    where SPECIES = 'setosa'
), versicolor as 
(
    select * from  DB_ECOMMERCE.DBT_SNF_BRIDGE.FLOWERS_SNOWFLAKE_BRIDGE
    where SPECIES = 'versicolor'
),other_flowers as 
(
    select * from  DB_ECOMMERCE.DBT_SNF_BRIDGE.FLOWERS_SNOWFLAKE_BRIDGE
    where SPECIES NOT IN ('versicolor', 'setosa') 
)

select * from setosa


/*Whats the count of the rows here ? */ 
-- I ingested 160 rows but there are only 62 rows left
/*
select count(*) from 
(
   select * from other_flowers 
   union
   select * from setosa 
   union
   select * from versicolor
)
*/