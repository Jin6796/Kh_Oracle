DDL(��ü����) - DBA 

DCL(����) - DB���� ���

DML(SELECT, INSERT, DELETE, UPDATE): ������ ���۾�

��ȸ(�����ȸ, �ֹ���ȸ�� ���...)

�Է�, ����, ���� - �Ƿ����� ���� ����

SELECT �÷���1, �÷���2, .....
 FROM �����̸�(SELECT��-�ζ��κ�)
 
SELECT ename, job
 From emp

SELECT ename, job, hiredate, sal
 From emp
 
SELECT ename as "�̸�", job as "�μ�", hiredate as "�Ի���"
 From emp

50����
��Ƽ������ - �ϲ� - JVM

�츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� ALLEN ����� �޿��� ���ΰ���?

�츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� �޿��� 1000�޷� �̻��� ����� �̸��� �޿��� ����ϴ� select���� �ۼ��Ͻÿ�.

SELECT ename as "�̸�", job as "�μ�", hiredate as "�Ի���", sal as "�޿�"
 From emp
WHERE ename = 'ALLEN'

SELECT ename as "�̸�", sal as "�޿�"
 From emp
WHERE SAL >= 1000

SELECT 
    empno "�����ȣ"
   ,empno as "�����ȣ22" --ǥ��
   ,empno �����ȣ
 FROM 

SELECT ename as "�̸�", sal as "�޿�"
 From emp
WHERE SAL >= 2000

SELECT ename as "�̸�", sal as "�޿�"
 From emp
WHERE SAL >= 2000
and deptno = 20

SELECT ename as "�̸�", sal as "�޿�"
 From emp
WHERE SAL >= 2000
or deptno = 20

or�� �������̶� �� �� �ϳ��� �����ϸ� �ȴ�.

SELECT sal
 From emp
WHERE ename = 'ALLEN'
