CREATE USER crud identified by tiger


grant create session to crud

grant create table to crud
-- ���̺��� ���� �� �ִ� ������ �ο�

grant create procedure to crud
-- ���ν��� ���� �ο�

grant create view to crud

alter user crud default tablespace users quota unlimited on users;

                                        