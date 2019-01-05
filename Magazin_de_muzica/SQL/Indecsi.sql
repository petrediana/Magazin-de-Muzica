--Indecsi

--Index pentru numele angajatilor
create index indx_nume_ang ON Angajati(nume);
create index indx_prenume_ang ON Angajati(prenume);
create index indx_upper_nume ON Angajati(upper(nume));
create index indx_upper_prenume ON Angajati(upper(prenume));

select nume, prenume from Angajati;
select upper(nume), upper(prenume) from Angajati;

select * from user_indexes;