use TestBD1;

select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent
from
	Continents A
where Country_Population > 
	(
	select
		avg(Country_Population)
	from
		Continents B
	where
		B.Country_Continent = A.Country_Continent
	)
	
