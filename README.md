# Uebung-dbi-006  -- ADAT Personentabelle

[Angabe.pdf](https://github.com/IxI-Enki/Uebung-dbi-006/blob/main/work-directory/ADAT_SQL_Uebung01_DBI2324.pdf)

![angabe](https://github.com/IxI-Enki/Uebung-dbi-006/assets/138018029/7dc0de37-8699-409b-9de9-13a8dd4842d8)

---

# *SPOILER* <sub><sup> → [*Lösung*](https://github.com/IxI-Enki/Uebung-dbi-006/blob/main/ADAT%20Personentabelle/ADATPersonentabelle.sql) <sup></sub>:

## 💾 `sql` - *Programm*:
 <details><summary>👉 ausklappen 👈 </summary>


 ```sql
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
```

</dertails>
