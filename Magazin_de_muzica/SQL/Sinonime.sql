--Sinonime

create synonym sin_instrumente for Instrumente;

select denumire_instrument, firma_producatoare
from sin_instrumente
where id_instrument < 3;

select * from sin_instrumente;

update sin_instrumente
set denumire_instrument = 'tobe acustice'
where id_instrument = 4; --modifica si in tabel!

select * from sin_instrumente;
select * from Instrumente;

select * from user_synonyms;
