
/* better way of not hardcoding the db names in the main executablefiles, the details of this can be found in the sources > in the dbt_project.yml file.*/
--select * from {{source("flowers", "DB_FLOWERS")}}

/* reering to the seed csv file of flower_country.csv*/
select * from {{ref("flower_country")}}