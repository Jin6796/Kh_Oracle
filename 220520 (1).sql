SELECT deptno, dname, loc FROM dept

SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp

--���̺� ����� ���� �����ϱ�
���Ἲ ��������(FK-DEPTNO) ������ ������ �Ұ��ϴ�.
������� ������ �Ұ��ϴ� - �����͸� �����ϰ� ������ �� �ִ�.
�ε����� �����ȴ�. (���� - �˻� �ӵ��� ����)

DELETE FROM dept

DELETE FROM emp

rollback

dept deptno pk�̰� - �⺻Ű (primary key)
emp deptno fk�̴�  - �ܷ�Ű (foreign key)

SELECT �÷���1, �÷���2, ... 
  FROM �����̸�
 WHERE �÷��� = ��
 

�츮 ȸ�翡 �ٹ��ϴ� ��� �߿� scott�̶�� ����� �ִ�?

SELECT empno
 FROM  emp
WHERE ename = 'SCOTT'

�츮 ȸ�翡 �ٹ��ϴ� ��� �߿� scott�̶�� ����� ������ 1, ������ 0�� ����ϴ� �ڵ带 �ۼ��Ͻÿ�.

SELECT 1 as "�����ϴ� (1:��, 2:�ƴ�)"
 FROM  emp
WHERE ename = 'SCOTT'

�츮 ȸ�翡 �ٹ��ϴ� ��� �߿� scott�̶�� ����� �� ���̴�?

SELECT �Լ���(�÷���)
 FROM  emp
WHERE ename = 'SCOTT'

tomato ���̵� �����ϴ�?

SELECT 1 as "�����ϴ� (1:��, 2:�ƴ�)"
 FROM  emp
WHERE ename  = 'SCOTT'

tomato ���̵� �� �� �ִ�? (X)

edit member