--Interac?iunea cu serverul Oracle prin intermediul comenzilor SQL (LDD ?i LMD)
-- LMD -> limbajul de manipulare al datelor: INSERT, UPDATE, DELETE 
-- LDD -> limbajul de definire al datelor: crearea, modificarea, mutarea struct. bazei de date

set serveroutput on;
-- Sa se adauge o noua coloana in tabela Zone numita "GATA", folosind un bloc PLSQL.
BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE ZONE ADD GATA DATE';
END;
/


--Sa se seteze pentru toate zonele data curenta pentru tabela GATA
BEGIN
    EXECUTE IMMEDIATE 'UPDATE ZONE SET GATA = SYSDATE';
END;
/

--Sa se adauge o noua entitate in tabela ZONE
BEGIN
    EXECUTE IMMEDIATE 'INSERT INTO ZONE(id_zona, id_magazin, gata, denumire_zona)
                                VALUES(24, 2, SYSDATE, 000)';
END;
/

--Sa se stearga coloana GATA din tabela
BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE ZONE DROP COLUMN GATA';
END;
/

--Sa se stearga ultima inregistrare adaugata
BEGIN
    EXECUTE IMMEDIATE 'DELETE FROM ZONE WHERE ID_ZONA = 24';
END;
/
    

