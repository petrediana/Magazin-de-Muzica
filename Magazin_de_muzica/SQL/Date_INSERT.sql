--Date pentru tabele:
alter table Aptitudini
add (instrumente varchar2(70));

insert into Magazine
values (1, 'Magazinul de muzica', 'Bulevardul y strada x nr 100', 'Bucuresti');
-----------------------

insert into Zone
values(1, 'Chitare', 1);

insert into Zone
values(2, 'Viniluri/CD-uri', 1);

insert into Zone
values(3, 'Tobe', 1);

insert into Angajati
values (11, 1234, 'Ion', 'Alexandru', '20-OCT-2015', 1, 1);

insert into Angajati
values(12, 1235, 'King', 'Marian', '15-NOV-2015', 1, 1);

insert into Angajati
values (13, 1236, 'Maria', 'Ionel', '10-OCT-2015', 1, 2);

insert into Angajati
values (14, 1237, 'Anton', 'Mariana', '01-JUN-2015', 1, 2);

insert into Angajati
values (15, 1238, 'Toma', 'Alexandra', '28-AUG-2016', 1, 3);

insert into Angajati
values (16, 1239, 'Stelian', 'George', '30-DEC-2015', 1, 3);
-----------------------

insert into Aptitudini
values (1, 'Tehnic', 'Chitara/Bass');

insert into Aptitudini
values (2, 'Tehnic', 'Tobe/Instrumente cu clapa');

insert into Aptitudini
values (3, 'Casier', ' ');

insert into Aptitudini
values (4, 'Cantaret', 'Orga electronica');
-----------------------

insert into Legaturi
values (1, 11, 1);

insert into Legaturi
values (2, 12, 2);

insert into Legaturi
values(3, 13, 3);

insert into Legaturi
values(4, 14, 1);

insert into Legaturi
values(5, 15, 2);

insert into Legaturi
values(6, 16, 3);
-----------------------

insert into Instrumente
values (1, 'Chitara electrica Aria Pro II', 'Aria', '01-JAN-2010', 1);

insert into Instrumente
values(2, 'Chitara electrica Stratocaster', 'Fender', '01-AUG-2002', 1);

insert into Instrumente
values(3, 'Tobe electrice', 'Pearl', '01-SEP-2005', 3);

insert into Instrumente
values(4, 'Tobe acustice', 'Pearl', '15-FEB-2012', 3);
-----------------------

insert into Albume
values(1, 'Blackwater Park', 'Opeth', '27-FEB-2001', 'Progressive Metal', 2);

insert into Albume
values(2, 'Holy Hell', 'Architects', '09-NOV-2018', 'Metalcore', 2);
-----------------------

insert into Artisti
values(1, 'Sam', 'Carter', ' ');

insert into Artisti
values(2, 'Alex', 'Dean', ' ');

insert into Artisti
values(3, 'Dan', 'Searle', ' ');

insert into Artisti
values(4, 'Adam', 'Christianson', ' ');

insert into Artisti
values(5, 'Josh', 'Middleton', ' ');

insert into Artisti
values(6, 'Mikael', '�kerfeldt', ' ');

insert into Artisti
values(7, 'Mart�n', 'M�ndez', ' ');

insert into Artisti
values(8, 'Martin', 'Axenrot', 'AXE');

insert into Artisti
values(9, 'Fredrik', '�kesson', ' ');

insert into Artisti
values(10, 'Joakim', 'Svalberg', ' ');
-----------------------

insert into Contributii
values(1, 1, 10);

insert into Contributii
values(2, 1, 9);

insert into Contributii
values(3, 1, 8);

insert into Contributii
values(4, 1, 7);

insert into Contributii
values(5, 1, 6);

insert into Contributii
values(6, 2, 5);

insert into Contributii
values(7, 2, 4);

insert into Contributii
values(8, 2, 3);

insert into Contributii
values(9, 2, 2);

insert into Contributii
values(10, 2, 1);