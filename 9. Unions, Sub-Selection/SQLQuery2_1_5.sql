use TestBD1;

select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent
from
	Continents
where
	Country_Square > 1000000

intersect

select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent
from
	Continents
where
	Country_Population > 100000000