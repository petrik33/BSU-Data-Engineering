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
	Country_Continent = 'Европа' and cast(Country_Population as float) / Country_Square > 300
union
select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent
from
	Continents
where
	Country_Continent = 'Азия' and cast(Country_Population as float) / Country_Square > 200
union
select
	Country_Name,
	Country_Capital,
	Country_Square,
	Country_Population,
	Country_Continent
from
	Continents
where
	Country_Continent = 'Африка' and cast(Country_Population as float) / Country_Square > 150
 