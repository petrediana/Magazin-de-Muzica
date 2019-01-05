--1. Sa se afiseze numele complet al artistilor care au contribuit pentru albumul cu id-ul 1, precum si numele albumului si denumirea trupei
select ar.nume || ' ' || ar.prenume as "Nume complet", al.denumire_album, al.denumire_compozitor
from Artisti ar, Contributii c, Albume al
where ar.id_artist = c.id_artist and al.id_album = 1 and al.id_album = c.id_album;

--2. Sa se afiseze date despre angajatii care au specializarea tehnic (nume complet, marca, zona in care lucreaza, data de angajare)
select ang.marca_angajat, ang.nume || ' ' || ang.prenume "Nume complet",ang.data_angajare, zn.denumire_zona
from Angajati ang, Zone zn, Legaturi leg, Aptitudini apt
where ang.id_zona = zn.id_zona and apt.specializare = 'Tehnic' and leg.marca_angajat = ang.marca_angajat and leg.id_aptitudine = apt.id_aptitudine;

--3. Sa se afiseze denumirea zonei, specializarea pentru fiecare angajat si daca are cunostinte despre unul sau mai multe instrumente
select zn.denumire_zona, apt.specializare, apt.instrumente, ang.nume || ' ' || ang.prenume "Nume complet"
from Angajati ang, Zone zn, Legaturi leg, Aptitudini apt
where ang.id_zona = zn.id_zona and leg.marca_angajat = ang.marca_angajat and leg.id_aptitudine = apt.id_aptitudine;

--4. Sa se mareasca salariul astfel: FOLOSIND CASE
        --angajatii din zona 1 primesc o marire cu 400 de lei
        --angajatii din zona 2 primesc o marire cu 300 de lei
        --angajatii din zona 3 primesc o marire cu 200 de lei
update Angajati
set salariul = (
                    CASE when id_zona = 1 then 400 + salariul
                         when id_zona = 2 then 300 + salariul
                         else 200 + salariul END);
select salariul from Angajati;

--5. Sa se afiseze o majorare a salariului astfel: FOLOSIND CASE FOLOSIND DECODE
        --angajatii din zona 1 primesc o marire cu 400 de lei
        --angajatii din zona 2 primesc o marire cu 300 de lei
        --angajatii din zona 3 primesc o marire cu 200 de lei
select nume, salariul, marca_angajat,
DECODE (id_zona, 1, 400 + salariul, 2, 300 + salariul, 200 + salariul) "Salariu Majorat"
from Angajati;

--6. Sa se afiseze angajatii care sunt angajati in 2015
select marca_angajat, nume, prenume
from Angajati
where extract (year from data_angajare) = 2015;

--7. Sa se afiseze zonele magazinului cu id-ul 1
select denumire_zona
from Zone
where id_magazin = 1;

--8. Sa se afiseze toate intrumentele din zona chitare si cate sunt
select inst.denumire_instrument, count(inst.denumire_instrument) "Nr instrumente"
from Instrumente inst, Zone zn
where inst.id_zona = zn.id_zona and zn.denumire_zona = 'Chitare'
group by inst.denumire_instrument;

--9. Sa se afiseze cate persoane au contribuit pentru fiecare album
select al.denumire_album, al.denumire_compozitor, count(ar.nume) "Contribuitori"
from Albume al, Artisti ar, Contributii con
where ar.id_artist = con.id_album and al.id_album = con.id_album
group by al.denumire_album, al.denumire_compozitor;

--10. Sa se afiseze angajatii  care au salariul mai mic decat salariul mediu
select a.nume, a.prenume, a.salariul
from Angajati a, Angajati a2
group by a.nume, a.prenume ,a.salariul
having a.salariul < avg(a2.salariul);

--11. Sa se afiseze angajatii care au salariul egal cu salariul maxim
select a.nume, a.prenume, a.salariul
from Angajati a, Angajati a2
group by a.nume, a.prenume ,a.salariul
having a.salariul = max(a2.salariul);

--12. Sa se afiseze toate datele despre Angajati
select * from Angajati;

--13. Sa se afiseze angajatii care sunt casieri si zonele in care sunt repartizati
select ang.nume, ang.prenume, zn.denumire_zona "zona repartizata"
from Angajati ang, aptitudini apt, Legaturi leg, Zone zn
where ang.id_zona = zn.id_zona and leg.marca_angajat = ang.marca_angajat and leg.id_aptitudine = apt.id_aptitudine and apt.specializare = 'Casier';

--14 Union
select denumire_album "Informatii: "from Albume
union 
select nume || ' ' || prenume from Artisti;

--15Id-ul zonei unde se pot gasi albumele muzicale
select id_zona from Albume
intersect
select id_zona from Zone;

--16 Sa se afiseze id-ul zonelor in care nu se gasesc albume muzicale
select id_zona from Zone
minus
select id_zona from Albume;

