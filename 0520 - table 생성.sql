--create tablespace �����̽���
--datafile '<����������>' size<ũ��>
--
--extent management�� locally������� �ǰ� segment space management �� auto������� ����

���̺� �����̽��� ���� �����Ͱ� �����Ǵ� �������� ������̴�.
ũ��� 100MB, �������� ��ġ�� C:\app\Jin\oradata\orcl11\jin.dbf

create tablespace ts_jin
datafile 'C:\app\Jin\oradata\orcl11\jin.dbf' size 100M;


--create tablespace sp_ibb
--datafile
--'C:\app\kimjoy2\oradata\orcl11\dbIBB.dbf' size 20M;
--
--������������ ũ�⸦ �����Ѵ�.
--
--alter database datafile
--'C:\oracle\product\10.2.0\oradata\orcl10\kimjoy.dbf' resize 10M;

select tablespace_name, file_name, autoextensible, increment_by, maxbytes
  from dba_data_files
 where tablespace_name = 'TS_JIN' --����� �̸��� �빮�ڴϱ� �빮�ڷ� ����Ѵ�.

--���̺����̽� �ڵ�Ȯ��
--
--���̺����̽� ����
--drop tablespace <���̺����̽���>

--create user �̸� identified by ��й�ȣ
--default tablespace �����̽���

create user jin identified by jin1234
default tablespace ts_jin

DCL�� ������ �ο��Ѵ�.

grant create session to jin with admin option; --grant: ������ �� �ִ� ����

temporary tablespace temp; 


--create user IBB identified by abc123
--default tablespace sp_ibb;

--GRANT CREATE sequence to ibb
--
--GRANT CREATE trigger to ibb

--grant create session to JIN  with admin option;

--grant create table to kimjoy  with admin option;
--
--grant create view to kimjoy;
--
--alter user kimjoy  quota unlimited on test_table;
--
--alter user ftbc2 default tablespace users quota unlimited on users;