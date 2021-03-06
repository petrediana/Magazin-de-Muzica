create table Magazine(
id_magazin number(3) constraint pk_id_magazin primary key,
denumire_magazin varchar2(40) constraint nn_den_mag not null,
adresa varchar2(40) constraint nn_adresa not null)

create table Angajati(
marca_angajat number(10) constraint pg_marca_ang primary key,
CNP number(15) constraint uq_cnp unique,
nume varchar2(40) constraint nn_nume not null,
prenume varchar2(40) constraint nn_prenume not null,
data_angajare date constraint nn_data_ang not null,
id_magazin number(3),
    constraint fkangj_id_magazin foreign key(id_magazin) references Magazine(id_magazin),
id_zona varchar2(15),
    constraint fkangj_id_zona foreign key(id_zona) references Zone(id_zona))

create table Legaturi(
id_legatura number(10) constraint pk_id_legatura primary key,
marca_angajat number(10),
    constraint fkleg_marca_angajat foreign key(marca_angajat) references Angajati(marca_angajat),
id_aptitudine number(3),
    constraint fkleg_id_aptitudine foreign key(id_aptitudine) references Aptitudini(id_aptitudine))


create table Aptitudini(
id_aptitudine number(3) constraint pk_id_apt primary key,
specializare varchar2(40) constraint nn_specializare not null
)

create table Zone(
id_zona varchar2(15) constraint pk_id_zona primary key,
denumire_zona varchar2(30) constraint nn_den_zona not null,
id_magazin number(3),
    constraint fkzona_id_magazin foreign key(id_magazin) references Magazine(id_magazin))

create table Instrumente(
id_instrument number(15) constraint pk_id_instrument primary key,
denumire_instrument varchar2(30) constraint nn_den_instr not null,
firma_producatoare varchar2(30) constraint nn_firma_prod not null,
an_fabricatie date constraint nn_an_fab not null,
id_zona varchar2(15),
    constraint fkinstrumente_id_zona foreign key(id_zona) references Zone(id_zona))    

create table Albume(
id_album number(10) constraint pk_id_album primary key,
denumire_album varchar2(40) constraint nn_den_album not null,
denumire_compozitor varchar2(40) constraint nn_den_compozitor not null,
an_aparitie date constraint nn_an_ap not null,
genul_muzical varchar2(40) constraint nn_gen not null,
id_zona varchar2(15),
    constraint fkalbum_id_zona foreign key (id_zona) references Zone(id_zona))


create table Contributii(
id_contributie number(3) constraint pk_id_c primary key,
id_album number(10),
    constraint fkcontributie_id_album foreign key (id_album) references Albume(id_album),
id_artist number(3),
    constraint fkcontributie_id_artist foreign key(id_artist) references Artisti(id_artist))
    
create table Artisti(
id_artist number(3) constraint pk_id_artist primary key,
nume varchar2(40) constraint nn_nume_ar not null,
prenume varchar2(40) constraint nn_prenume_ar not null,
nume_de_scena varchar2(40) constraint nn_nume_sc not null)
    
    