--Hierarchical Queries 
insert into Magazine
values (2, 'Alt magazin', 'Strd x', 'Bucuresti');

insert into Angajati
values(20, 2123, 'Maria', 'Cristina', '15-FEB-2014', 2, 1, 2000);

insert into Angajati
values(21, 2124, 'Marian', 'Cristin', '25-FEB-2014', 2, 1, 2000);
--1.
select nume, prenume, salariul, level
from Angajati
connect by prior marca_angajat = id_magazin;

--2.
select marca_angajat, nume, prenume, salariul, level
from Angajati
connect by prior marca_angajat = id_magazin
order siblings by salariul;

--3.
select connect_by_root nume, salariul from Angajati
        connect by prior marca_angajat = id_magazin;
        


