create table dept_copy as select * from dept

-- ������ ���� Ʈ���� ���� ���� Ȯ��

insert into dept values(66,'�����','����', null, null);

select * from dept_copy;

select * from dept

update dept set loc = '����' where deptno = 66;

delete from dept where deptno = 22;