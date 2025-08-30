--Потенциальная выручка по специальностям
select 
	ds.name,
	sum(ds.cost) as revenue
	from dim_specialization ds 
	join fact_application fa on fa.specialization_id = ds.specialization_id 
	group by ds.name
	order by revenue desc 