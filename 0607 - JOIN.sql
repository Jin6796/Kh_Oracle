���� 1. temp ���̺��� ���, ����, �μ��ڵ�, �μ���Ī(dept_name)�� ������ּ���.

SELECT * FROM temp

SELECT * FROM tdept

SELECT * FROM temp, tdept

SELECT * FROM temp a, tdept b
 WHERE a.dept_code = b.dept_code
 
SELECT emp_id ���, emp_name ����, a.dept_code �μ��ڵ�, dept_name �μ���Ī 
  FROM temp a, tdept b
 WHERE a.dept_code = b.dept_code
ORDER BY �μ��ڵ�

SELECT emp_id ���, emp_name ����, b.dept_code �μ��ڵ�, dept_name �μ���Ī --PK�� �ִ� ������ �������� �� ����(�ӵ�����) -- �ڵ�����
  FROM temp a, tdept b
 WHERE a.dept_code = b.dept_codel
 

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
���� 2. tcom�� work_year�� 2001�� �ڷ�� temp�� ������� �����ؼ� ������ �� 
      comm�� �޴� ������ ����� 'salary+comm'�� ��ȸ�ϴ� sql���� �ۼ��ϼ���.

SELECT * FROM tcom -- 

SELECT * FROM temp

SELECT emp_name ����, 
       to_char(salary,'999,999,999')||'��' ����, 
       to_char(comm,'999,999,999')||'��' ������, 
       to_char(salary+comm,'999,999,999')||'��' as"����+������"
  FROM tcom a, temp b
 WHERE a.emp_id=b.emp_id 
   AND work_year = 2001
 
 
�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
���� 3. temp�� emp_level�� �̿��� emp_level ���� ������ ���� ����/���� ���� ���� ��� ������ ���� ������
      ����� ����, ����, salary�� �о���� sql���� �ۼ��Ͻÿ�.  (between - and)
      
SELECT * FROM temp

SELECT * FROM emp_level

SELECT salary FROM temp WHERE 37000000<= salary <=75000000

SELECT emp_id ���, emp_name ����, b.lev ����, to_char(salary,'999,999,999')||'��' ����
  FROM temp a, emp_level b
 WHERE a.lev = b.lev 


SELECT a.emp_id ���, a.emp_name ����, a.lev ����, to_char(a.salary,'999,999,999')||'��' ����
  FROM temp a, emp_level b
 WHERE a.salary BETWEEN from_sal AND to_sal AND b.lev='����'
 
 
SELECT salary, lev
  FROM temp
 WHERE lev!='����'
ORDER BY lev
 


�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
���� 4. �� ��� �� ����� salary, ������/���ѱݾ��� ������ �Ѵ�. temp�� emp_level�� �����Ͽ� ����� �����ֵ� 
       ���� ����� ��� ����, salary �������̶� ���� �� �ֵ��� �������� �ۼ��Ͻÿ�. (outer join)
      
SELECT * FROM temp

SELECT * FROM emp_level

SELECT * FROM temp, emp_level

SELECT a.emp_id, emp_name, a.lev, a.salary, b.to_sal, b.from_sal
  FROM temp a, emp_level b
  
SELECT a.emp_id, emp_name, a.lev, a.salary, b.to_sal, b.from_sal
  FROM temp a, emp_level b
 WHERE a.lev = b.lev  

SELECT a.emp_id ���, a.emp_name ����, a.lev ����, 
       to_char(a.salary,'999,999,999')||'��' ����, 
       to_char(b.to_sal,'999,999,999') ����, 
       to_char(b.from_sal,'999,999,999') ����
  FROM temp a, emp_level b
 WHERE a.lev = b.lev(+) 
 
SELECT a.emp_id ���, a.emp_name ����, a.lev ����, 
       to_char(a.salary,'999,999,999')||'��' ����, 
       to_char(b.to_sal,'999,999,999') ����, 
       to_char(b.from_sal,'999,999,999') ����
  FROM temp a LEFT OUTER JOIN emp_level b
    ON a.lev = b.lev
 


�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
���� 5. tdept ���̺� �ڽ��� ���� �μ������� �����ϰ� �ִ�. 
      �� ���̺��� �̿��Ͽ� �μ��ڵ� �μ���, �����μ��ڵ�, �����μ����� �о���� �������� �ۼ��Ͻÿ�.
      
SELECT * FROM temp

SELECT * FROM tdept --parent_dept


SELECT a.dept_code �μ��ڵ�, a.dept_name �μ���, b.parent_dept �����μ��ڵ� , b.dept_name �����μ���
FROM tdept a, tdept b
WHERE a.parent_dept = b.dept_code



�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
��������
temp�� tdept�� �̿��Ͽ� ���� �÷��� �����ִ� SQL�� ����� ����.
�����μ��� 'CA0001'�� �μ��� �Ҽӵ� ������ 
1.���, 2.����, 3.�μ��ڵ� 4.�μ���, 5.�����μ��ڵ�, 6.�����μ���, 7.�����μ����ڵ�, 8.�����μ��强��
������ �����ָ� �ȴ�.

SELECT * FROM TEMP order by dept_code

SELECT * FROM tdept

SELECT a1.emp_id as ���, a1.emp_name ����, 
       b1.dept_code �μ��ڵ�, b1.dept_name �μ���, b2.dept_code �����μ��ڵ�, 
       b2.dept_name �����μ���, b2.boss_id �����μ����ڵ�, a2.emp_name �����μ��强��
  FROM temp a1, temp a2 ,tdept b1, tdept b2
 WHERE a1.dept_code   = b1.dept_code
   AND b1.parent_dept = 'CA0001'
   AND b1.parent_dept = b2.dept_code
   AND b2.boss_id     = a2.emp_id
 
 b1.parent_dept > b2.dept_code
 
 
SELECT a1.emp_id    as ���,
       a1.emp_name  as ����,
       b1.dept_code as �μ��ڵ�,
       b1.dept_name as �μ���,
       b2.dept_code as �����μ��ڵ�,
       b2.dept_name as �����μ���,
       b2.boss_id   as �����μ����ڵ�,
       a2.emp_name  as �����μ��强��
  FROM temp a1, tdept b1
 WHERE a1.dept_code = b1.dept_code
 
 
SELECT a1.emp_id    as ���,
       a1.emp_name  as ����,
       b1.dept_code as �μ��ڵ�,
       b1.dept_name as �μ���
  FROM temp a1, tdept b1
 WHERE a1.dept_code = b1.dept_code
 
 
SELECT a1.emp_id    as ���,
       a1.emp_name  as ����,
       b1.dept_code as �μ��ڵ�,
       b1.dept_name as �μ���,
       b2.dept_code as �����μ��ڵ�,
       b2.dept_name as �����μ���
  FROM temp a1, tdept b1, tdept b2
 WHERE a1.dept_code   = b1.dept_code
   AND b1.parent_dept = b2.dept_code
   
   
SELECT a1.emp_id    as ���,
       a1.emp_name  as ����,
       b1.dept_code as �μ��ڵ�,
       b1.dept_name as �μ���,
       b2.dept_code as �����μ��ڵ�,
       b2.dept_name as �����μ���,
       b2.boss_id   as �����μ����ڵ�,
       a2.emp_name  as �����μ��强��
  FROM temp a1, temp a2, tdept b1, tdept b2
 WHERE a1.dept_code   = b1.dept_code
   AND b1.parent_dept = b2.dept_code
   AND b2.boss_id     = a2.emp_id
   
   
SELECT * FROM emp