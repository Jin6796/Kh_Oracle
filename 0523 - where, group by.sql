SELECT * FROM t_worktime --���̺� Ȯ��

SELECT workcd_vc, time_nu, 'rnk' as rnk
FROM t_worktime
ORDER BY time_nu -- �������� ����?

SELECT workcd_vc, time_nu,
RANK()OVER (ORDER BY time_nu) as rnk --���� �Լ� ���
FROM t_worktime

SELECT workcd_vc, time_nu,
ROW_NUMBER()OVER (ORDER BY time_nu) as rnk -- ������� ���� ���� ��ȯ�ϴ� �Լ� ���
FROM t_worktime

SELECT workcd_vc, time_nu, rownum rnk
FROM t_worktime
ORDER BY time_nu

SELECT workcd_vc, time_nu, rownum rnk
FROM (SELECT workcd_vc, time_nu 
        FROM t_worktime 
      ORDER BY time_nu)
      
�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�     
SELECT ename, deptno
  FROM emp

  �μ����� ����;��!!!!!!!!!!!!!!!!!!!!!
  
SELECT emp.deptno, dname FROM emp, dept

SELECT * FROM emp, dept -- emp�� dept �� �� ����

SELECT * 
  FROM emp, dept -- �� �� �� �� ����
WHERE emp.deptno = dept.deptno
  AND ename = 'SMITH'

SELECT deptno FROM emp, dept

SELECT a.deptno FROM emp a, dept b

SELECT b.deptno FROM emp a, dept b

SELECT empno FROM emp
  
20, 20 smith����� 20�� ���� dept�� ���� 20 ���� ã�� 
�μ� ����(�θ�)������              deptno�� �⺻Ű
��� ����(�ڼ�)������ �����ȣ�� �⺻Ű, deptno�� �ܷ�Ű  
�μ����տ� deptno�� �޾Ƽ� �¾ �ڼ��� ��������̰� �θ��� deptno�� �ڼ����� ���� �ܷ�Ű�� �Ǿ���.
�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�

SELECT a.time_nu, b.time_nu FROM t_worktime a, t_worktime b

SELECT rownum rnu, ename FROM emp
WHERE rownum <4

SELECT a.time_nu, b.time_nu 
FROM t_worktime a, t_worktime b
WHERE rownum < 16 

SELECT time_nu FROM t_worktime
      WHERE rownum <4

SELECT a.time_nu
FROM 
     (SELECT time_nu FROM t_worktime
      WHERE rownum <4
     )a,
     (SELECT time_nu FROM t_worktime
      WHERE rownum <4
     )b
 WHERE a.time_nu <= b.time_nu


SELECT a.time_nu as time_A, count(b.time_nu) as rnk
FROM 
     (SELECT time_nu FROM t_worktime
      WHERE rownum <4
     )a,
     (SELECT time_nu FROM t_worktime
      WHERE rownum <4
     )b
 WHERE a.time_nu <= b.time_nu 
 GROUP BY a.time_nu
 ORDER BY count(b.time_nu)
 
 �츮 ȸ�翡 �ٹ��ϴ� ����鿡 ���ؼ� �μ��� ��� ���� ����ϰ� �ʹ�.
 
SELECT empno FROM emp
GROUP BY empno

SELECT COUNT(empno) FROM emp
GROUP BY deptno

SELECT deptno, COUNT(empno) FROM emp
GROUP BY deptno



SELECT max(sal), max(ename) FROM emp
> ename �տ� max�� �ٿ������ν� ���������� �ذ������� �������� ���ǹ��ϴ�. (�������谡 ����)

SELECT max(sal) FROM emp
GROUP BY deptno

SELECT max(sal),deptno FROM emp
GROUP BY deptno