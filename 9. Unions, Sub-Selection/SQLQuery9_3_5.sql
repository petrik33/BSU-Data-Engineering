use TestBD1;

select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent
from
	Continents A
where Country_Square > 
	(
	select
		avg(Country_Square)
	from
		Continents B
	where
		B.Country_Continent = A.Country_Continent
	)
	
