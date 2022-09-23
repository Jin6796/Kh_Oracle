CREATE USER crud identified by tiger


grant create session to crud

grant create table to crud
-- 테이블을 만들 수 있는 권한을 부여

grant create procedure to crud
-- 프로시저 권한 부여

grant create view to crud

alter user crud default tablespace users quota unlimited on users;

                                        