-- refering the ephemeral model, which is needed. 
-- the ephemeral models ahve a global scope , so once defined it can be used by any model.
select * from {{ref('ephemeral_models')}}