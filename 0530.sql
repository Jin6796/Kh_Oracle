SELECT * FROM dept

SELECT empno FROM emp  --pk. �ε����� �־ �ڵ����� ���ĵȴ�. -- �ð��� ����!

SELECT empno FROM emp
 WHERE empno = 7566
 
SELECT empno FROM emp
 WHERE NVL(empno,0) = 7566 -- empno�� null�� �� 0�� ������ش�

SELECT /*+index_desc(emp PK_EMP) */ empno
  FROM emp
 
SELECT ename FROM emp 
ORDER BY ename desc

create index i_ename     -- pk�� �ƴϱ� ������ unique(X)
on emp(ename)

SELECT /*index_desc(emp i_ename)*/ename FROM emp

SELECT ename FROM emp
 WHERE ename = 'XXX'
 
-- �ε����� �ִ� �÷��̴��� �����ϸ� �ε����� ����� �� ����. 
 
SELECT ename FROM emp
 WHERE NVL(ename, '0') = 'XXX'
 
SELECT ename, deptno--deptno:�ܷ�Ű(�ߺ����)
  FROM emp
  
SELECT count(ename), deptno
  FROM emp
 GROUP BY deptno
 
--�μ���ȣ 40�� ������ �غ���?

SELECT * FROM dept

SELECT * FROM emp

SELECT count(ename), count(NVL(deptno,0))
  FROM emp
 GROUP BY deptno
  

 -- 56(14*4)���� ��ȸ�ȴ� (�Ͼ �� �ִ� ��� ����� ��) 
 -- īŸ�þ��� �� - ������ ����
 
SELECT count(emp.ename), dept.deptno, dept.dname
  FROM emp, dept
 WHERE emp.deptno(+) = dept.deptno  -- national join = equal join 
GROUP BY dept.deptno, dept.dname    --      : ���ʿ� ��� �ִ� �͸� ���´�.
 
����(emp[10,20,30,], dept[10,20,30,40,]) ���̺� �ִ� ���� �ƴ�
�� �� ���̺�(dept)���� �ְ� �ٸ� �� ��(emp)���� ���� ��(40)�� ����� ��
��(emp)�� null�� �ϴ��� ��(dept)�� ������ �����ٷ�   >> null�� �;��ϴ� ���� (+)

                                    
SELECT count(emp.ename), dept.deptno
  FROM emp, dept
 WHERE (emp.deptno = dept.deptno) -- and nvl(emp.deptno, 0)
GROUP BY dept.deptno
 

���Ϻ��� ���������� �ζ��κ�!!!!!!!!3

null = �𸥴�
�𸣴� �� �� �� �ֳ�? >> ����~

ename�� not null.
pk�� ��������:  not null, unique, unique index


comm�� �� ���� ����? - ���谡 �߸���

SELECT COUNT(ename), COUNT(NVL(comm,0)), COUNT(*)
  FROM emp
  
null�� �� ���� ���� �ʴ´�. null�� ��츦 ���� ������� �ʴ´�.

SELECT sum(comm) FROM emp

SELECT distinct(deptno) FROM emp

SELECT deptno FROM emp
UNION ALL
SELECT deptno FROM dept

SELECT deptno FROM emp
UNION
SELECT deptno FROM dept