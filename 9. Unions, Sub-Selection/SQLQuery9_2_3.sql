use TestBD1;

select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent
from
	(
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
	) as Afric_table
where
	Country_Population > 50000000