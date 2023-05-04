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
		max(Country_Population)
	from
		Continents
	where
		Country_Square in
		(	
			select
				min(Country_Square) as Country_Min_Square
			from
				Continents
			group by
				Country_Continent
		)
	)