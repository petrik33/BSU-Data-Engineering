use TestBD1;

select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent,
	round(cast(Country_Square as float) * 100 /
	(
	select
		sum(Country_Square)
	from
		Continents
	), 3) as Percent_Square
from
	Continents
order by Percent_Square desc
