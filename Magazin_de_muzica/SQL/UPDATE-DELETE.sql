--Sa se adauge celalalt prenume pentru angajatul cu marca 13
update Angajati
set prenume = 'Ionel Alexandru'
where marca_angajat = 13;

--Sa se transfere angajatul cu marca 16 in zona de chitare
update Angajati
set id_zona = (select id_zona from ZONE
                            where upper(denumire_zona) = upper('chitare'))
where marca_angajat = 16;

--Sa se actualizeze bulevardul si strada Magazinului cu id-ul 1
update Magazine
set adresa = 'Bulevardul cel Mare strada Agricola'
where id_magazin = 1;

--Sa se actualizeze salariul pentru toti angajatii cu 1400 de lei
update Angajati
set salariul = 1400;

--Sa se stearga tobele acustice din magazin
delete from Instrumente
where denumire_instrument = 'Tobe acustice';