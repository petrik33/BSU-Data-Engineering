use TestDB1;

select
	name,
	capital,
	square,
	population,
	continent
from
	Countries
where
	square > 1000000

union all

select
	name,
	capital,
	square,
	population,
	continent
from
	Countries
where
	population > 100000000