CREATE USER SAMPLE IDENTIFIED BY tiger
default tablespace users

--cmd: sqlplus sample/tiger@ip¡÷º“:1521/orcl11

grant create session to sample with admin option;

grant connect, resource to sample

grant create table to sample with admin option;

-- create table test1(t_id

alter user sample quota unlimited on users;