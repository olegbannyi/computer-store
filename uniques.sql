with
MonoProductManufacturer as
(
	select maker, count(model) as model_count
    from Product
    group by maker
)

select count(*) from MonoProductManufacturer
where model_count = 1;
