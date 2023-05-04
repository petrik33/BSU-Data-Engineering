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
	cast(Country_Population as float) / Country_Square > 
	(
	select avg(cast(Country_Population as float) / Country_Square)
	from Continents
	)
