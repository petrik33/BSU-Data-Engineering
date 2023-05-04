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
	Country_Continent = 
	(
	select
		Country_Continent
	from 
		Continents
	where
		Country_Name = 'Ангола'
	)