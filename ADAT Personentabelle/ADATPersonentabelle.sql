/*            Jan Ritt           ADAT Personentabelle        3ACIFT                    */
-----------------------------------------------------------------------------------------

-- create tables
--                        Spalten       |   Datentyp      |  Constraint  (foreign key)
create table PERSONEN(    PERSONEN_ID       number(4)        primary key,
                          NNAME             varchar(25)      NOT NULL,
                          VNAME             varchar(20))
-----------------------------------------------------------------------------------------

-- insert into tables
--          TABLE             PERSONEN_ID  |   NNAME        |  VNAME
insert into PERSONEN values ( 1,              'Mustermann',   'Max');
insert into PERSONEN values ( 2,              'Musterfrau',   'Mimi');

select * from PERSONEN;

-- 99999 <-- too long...number at max 9999:
insert into PERSONEN values ( 9999,           'Musterfrau',   'Maria');
select * from PERSONEN;
-----------------------------------------------------------------------------------------

-- alter table
/*                                    Spalten |   Datentyp   |  Constraint
            TABLE     add/alter/drop                                                   */
alter table PERSONEN  add             GEBDATE   date;
alter table PERSONEN  modify          NNAME     varchar(20);
alter table PERSONEN  drop column     VNAME;
-----------------------------------------------------------------------------------------

-- drop tables
drop table PERSONEN CASCADE CONSTRAINTS;     /* cascade constraints hier eigentlich noch 
                                                nicht notwendig, da keine 2. Tabelle mit 
                                                dieser verknüpft ist.
-----------------------------------------------------------------------------------------
