
/* better way of not hardcoding the db names in the main executablefiles, the details of this can be found in the sources > in the dbt_project.yml file.*/
--select * from {{source("flowers", "DB_FLOWERS")}}

/* reering to the seed csv file of flower_country.csv*/
select * from {{ref("flower_country")}}

--calling a macro
--macros is defined in the  macors folder
-- select a*,
-- {{percentage_change_func(petal_length,petal_length)}} as percentage_change
-- from {{source('flowers','DB_FLOWERS')}} a



--correct method:
-- the the columns are defined or passed in ''
-- select a.*,
-- {{ percentage_change_func('petal_length', 'petal_length') }} as percentage_change
-- from {{ source('flowers', 'DB_FLOWERS') }} a
