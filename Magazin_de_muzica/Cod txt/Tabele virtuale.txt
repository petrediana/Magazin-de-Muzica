--Tabele virtuale

--1. Tabela virtuala care gestioneaza numele complet al artistului, albumul si trupa in care contribuie
create view Informatii_Generale_Albume as
select ar.nume || ' ' || ar.prenume as "Nume complet", al.denumire_album, al.denumire_compozitor
from Artisti ar, Contributii c, Albume al
where ar.id_artist = c.id_artist and al.id_album = c.id_album;

select * from informatii_generale_albume;

--2. Tabela virtuala care gestioneaza numele complet, salariul, data de angajare si zona in care lucreaza un angajat
create view Informatii_Angajati as
select ang.marca_angajat, ang.nume || ' ' || ang.prenume "Nume complet", ang.salariul, ang.data_angajare, zn.denumire_zona
from Angajati ang, Zone zn, Legaturi leg, Aptitudini apt
where ang.id_zona = zn.id_zona and leg.marca_angajat = ang.marca_angajat and leg.id_aptitudine = apt.id_aptitudine;

select * from informatii_angajati;

--3. Tabela virtuala care gestioneaza denumirea instrumentului, id-ul si firma producatoare
create view Informatii_Instrumente as
select id_instrument, denumire_instrument, firma_producatoare
from Instrumente;

update informatii_instrumente
set denumire_instrument = upper('tobe acustice')
where id_instrument = 4;


select * from informatii_instrumente;
select * from user_views;