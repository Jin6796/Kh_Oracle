CREATE VIEW v_emp1(e_no, e_name)
AS SELECT empno, ename
     FROM emp
    WHERE deptno=10
    
SELECT e_no, e_name FROM v_emp1



SELECT point_nu FROM t_giftpoint
 WHERE name_vc = '��ȭƼ��'
 
SELECT mem.name_vc, mem.point_nu, point.point_nu
  FROM t_giftmem mem,
       (
        SELECT point_nu FROM t_giftpoint
         WHERE name_vc = '��ȭƼ��'
       )point
 WHERE mem.point_nu >= point.point_nu
 
 
�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
Q. �츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� ALLEN���� �޿��� �� ���� �޴� ����� �̸��� �޿��� ����ϴ� SQL���� �ۼ��ϼ���.

SELECT * FROM emp

SELECT sal 
  FROM emp 
 WHERE ename = 'ALLEN'

SELECT ename �̸�, sal �޿�
  FROM emp
 WHERE sal > (SELECT sal FROM emp WHERE ename = 'ALLEN')