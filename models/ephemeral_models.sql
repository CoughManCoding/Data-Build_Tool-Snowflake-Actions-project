{{
    config
    (
        materialized = 'ephemeral'
    )
}}

with otherSPECIES as 
(
    select * from  {{source("flowers",  "DB_FLOWERS")}}
    
    where SPECIES not in ('versicolor', 'setosa')
    limit 20
)

select * from otherSPECIES