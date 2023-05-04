use TestBD1;

select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent,
	round(cast(Country_Population as float) * 100 /
	(
	select
		sum(Country_Population)
	from
		Continents
	), 3) as Percent_Population
from
	Continents
order by Percent_Population desc
