use TestBD1;

select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent,
	round(cast(Country_Population as float)*100/
	(
	select
		sum(Country_Population)
	from
		Continents B
	where
		A.Country_Continent = B.Country_Continent
	), 3) as Continent_Percent
from
	Continents A
order by Continent_Percent desc