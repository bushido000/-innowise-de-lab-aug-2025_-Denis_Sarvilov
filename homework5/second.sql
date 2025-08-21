-- абитуриенты с самым высоким количеством баллов
select 
	concat(da.first_name ,' ', da.last_name ) as full_name,
	max(fa.exam_score) as max_score
from dim_aplicant da 
left join fact_application fa on da.aplicant_id = fa.aplicant_id 
group by full_name 
order by max_score desc
limit 10;