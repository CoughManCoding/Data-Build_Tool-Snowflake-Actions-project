with otherSPECIES as 
(
    select * from  {{source("quick_adhoc_other_flowers",  "DB_FLOWERS")}}
    
    where SPECIES not in ('versicolor', 'setosa')
    limit 10
)

select * from otherSPECIES
-- limit 10

