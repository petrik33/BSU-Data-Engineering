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
	Country_Population = 
	(
	select
		max(Country_Min_Population)
	from
		(	
			select
				min(Country_Population) as Country_Min_Population
			from
				Continents
			group by
				Country_Continent
		) A
	)