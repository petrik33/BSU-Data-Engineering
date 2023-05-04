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
	Country_Continent in
	(
	select
		Country_Continent
	from
		Continents
	group by
		Country_Continent
	having
		avg(Country_Population) > 
		(
		select
			avg(Country_Population)
		from
			Continents
		)
	)