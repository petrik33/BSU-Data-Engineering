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
	Country_Continent = 'Àôðèêà'
	and
	exists
	(
	select
		*
	from 
		Continents
	where
		Country_Continent = 'Àôðèêà'
		and
		Country_Square > 2000000
	)