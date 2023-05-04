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
	Country_Continent = 'Африка'
	and
	Country_Population > any
	(
	select
		Country_Population
	from 
		Continents
	where
		Country_Continent = 'Южная Америка'
	)