--Subcereri

--1. Sa se afiseze angajatii care primesc salariul din anul 2015 strict
select marca_angajat, nume, prenume
from Angajati
where salariul in(select salariul from Angajati where extract(year from data_angajare) = 2015);

--2. Sa se afiseze date despre instrumentele al caror id se regaseste in id'ul zonelor cu denumirea 'Chitare'
select id_instrument, denumire_instrument, firma_producatoare
from Instrumente
where id_zona in(select id_zona from Zone where upper(denumire_zona) = upper('Chitare'));

--3. Sa se afiseze denumirea zonelor care apartin de Magazinul cu id'ul 1
select denumire_zona
from Zone
where id_magazin in(select id_magazin from Magazine where id_magazin = 1);

--4. Sa se afiseze numele si prenumele artistilor care au contribuit la albumul cu id'ul 1
select nume, prenume
from Artisti
where id_artist in(select id_artist from Contributii where id_album = 1);