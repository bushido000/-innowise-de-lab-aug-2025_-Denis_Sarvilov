-- количество заявок по специальностям
select 
	ds.name,
	count(fa.specialization_id)
	from fact_application fa
	join dim_specialization ds on ds.specialization_id = fa.specialization_id
	group by ds.name;
