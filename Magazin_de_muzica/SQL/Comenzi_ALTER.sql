--adaugare atribut nou "oras" pentru tabela Magazine
alter table Magazine
add (oras varchar2(40));

--modificare lungime pentru atributul instrumente
alter table Aptitudini
add (instrumente varchar2(70));

--adaugare restrictie de tipul not null pentru atributul "oras"
alter table Magazine
add constraint nn_oras check (oras is not null);

--modificare proprietati pentru campul firma producatoare din tabela instrumente astfel incat lungimea sa devina 50
alter table Instrumente
modify firma_producatoare varchar2(50);

--sa se stearga restrictia pentru atributul "oras" din tabela Magazine
alter table Magazine
drop constraint nn_oras;


--Sa se adauge atributul salariul pentru tabela Angajati
alter table Angajati
add (salariul number(5));

--Sa se adauge restrictia ca salariul sa fie intre 1300 si 4000 de lei
alter table Angajati
add constraint chk_salariul check(salariul between 1300 and 4000);


