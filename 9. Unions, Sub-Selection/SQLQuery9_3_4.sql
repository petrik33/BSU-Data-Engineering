use TestBD1;

select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent,
	round(cast(Country_Square as float)*100/
	(
	select
		sum(Country_Square)
	from
		Continents B
	where
		A.Country_Continent = B.Country_Continent
	), 3) as Square_Percent
from
	Continents A
order by Square_Percent desc