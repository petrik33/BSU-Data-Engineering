use TestDatabas1;

select
	Nazvanie,
	Stolica,
	PL,
	Kol_Nas,
	Kontinent
from
	Tabl_Kontinent$
where
	PL > 1000000

union

select
	Nazvanie,
	Stolica,
	PL,
	Kol_Nas,
	Kontinent
from
	Tabl_Kontinent$
where
	Kol_Nas > 100000000