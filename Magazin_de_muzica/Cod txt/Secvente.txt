--Secvente

create sequence seq_id_magazin
start with 10 increment by 5
maxvalue 100 nocycle;

drop sequence seq_id_magazin;

create sequence seq_instrument
start with 100 increment by 1
maxvalue 100 cycle;

insert into  Instrumente
values (seq_instrument.nextval, 'Chitara bass', 'Fender', '10-nov-2012', 1);

select * from user_sequences;