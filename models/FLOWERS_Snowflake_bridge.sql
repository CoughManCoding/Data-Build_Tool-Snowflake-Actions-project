with ranked_indexes as
(
    Select 
        a.*,
        dense_rank() over (partition by petal_length order by sepal_width) as Dense_,
        rank() over (partition by petal_length order by sepal_width) as ranked_index,
        row_number() over (partition by petal_length order by sepal_width) as row_numbers,
    from DB_ECOMMERCE.SC_ECOM_ADMIN.DB_FLOWERS a
    where SPECIES IN ('versicolor','setosa')
    --limit 60

)

select * from ranked_indexes