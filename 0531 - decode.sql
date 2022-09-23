SELECT * FROM lecture

SELECT * FROM emp

SELECT deptno, SUM(sal)
  FROM emp
 GROUP BY deptno

SELECT deptno, SUM(sal), AVG(sal)
  FROM emp
 GROUP BY deptno
 
SELECT deptno, SUM(sal), AVG(sal)
  FROM emp
 GROUP BY deptno
HAVING AVG(sal)>=2000

SELECT DECODE(1,2,'��','����')
  FROM dual
  
SELECT DECODE(1,1,'��','����')
  FROM dual
  
SELECT DECODE(5,1,'A',2,'B',3,'C','D')
  FROM dual
  
IF     5 = 1 THEN return 'A'
ELSEIF 5 = 2 THEN return 'B'
ELSEIF 5 = 3 THEN return 'C'
ELSE              return 'D'

SELECT * FROM lecture  

--lec time:���� �ð�, lec point:����

SELECT * FROM lecture 

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
����1: �ִ� ���� �ð��� ������ ������ '�Ϲ�'�� ���� ������ �Ѵ�. ��� �ؾ� �ϴ°�?

SELECT lec_time, lec_point, DECODE(lec_time, lec_point, '�Ϲݰ���', '��Ÿ����') as "�Ϲ�/��Ÿ"
  FROM lecture
  
�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
����2: �ִ簭�ǽð��� ������ ���� ������ ����(����)�� �˰� �ʹ�. ��� �ؾ� �ϴ°�?

SELECT ROWNUM, lec_time, lec_point, DECODE(lec_time, lec_point, lec_id) as �����ڵ�
  FROM lecture
  
  
SELECT COUNT(lec_id)
  FROM lecture
 WHERE lec_point = lec_time
 
SELECT DECODE(lec_time, lec_point, 'A'), DECODE(lec_time, lec_point, lec_id)
  FROM lecture
  
SELECT COUNT(DECODE(lec_time, lec_point, 'A')), DECODE(lec_time, lec_point, lec_id)
  FROM lecture

SELECT COUNT(DECODE(lec_time, lec_point, 'A')),
       COUNT(DECODE(lec_time, lec_point, lec_id)),
       MAX(DECODE(lec_time, lec_point, lec_id))
  FROM lecture

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
����3: ���� �ð��� ������ ������ '�Ϲ�'�� ���Ϲ��� �� ���ĵ� �ϰ� ���� ��쿡�� ��� �ؾ� �ϴ°�?

SELECT lec_time, lec_point, DECODE(lec_time, lec_point, '�Ϲ�', null) as "�Ϲ�/����"
  FROM lecture
 ORDER BY DECODE(lec_time, lec_point, '�Ϲ�', null)

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
����4: �ִ� ���� �ð��� ������ ������ '�Ϲ�', �ٸ��� '����'�� ���Ϲ��� �� ���ĵ� �ϰ� ���� ��쿡�� ��� �ؾ��ϴ°�?

SELECT lec_time, lec_point, DECODE(lec_time, lec_point, '�Ϲ�', '����') as "�Ϲ�/����"
  FROM lecture
 ORDER BY DECODE(lec_time, lec_point, '�Ϲ�', '����') DESC

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
����5: ���� �ð��� ������ �ٸ��� NULL�� ���ϵǴ� ��� 'Ư��'�̶�� ���ϵǵ��� �Ϸ��� ��� �ؾ��ϴ°�?

SELECT lec_time, lec_point, DECODE(lec_time, lec_point, '�Ϲ�', 'Ư��') as "�Ϲ�/Ư��"
  FROM lecture
 
�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�  
����6: lec_time�� ũ�� �������, lec_point�� ũ�� ��Ÿ����, ���� ������ '�Ϲݰ���'���� �����ް��� �Ѵ�.

SELECT * 
  FROM lecture
   
SELECT SIGN(5), SIGN(-600), SIGN(10-50), SIGN(10-10) FROM dual

SELECT lec_id, lec_time, lec_point, SIGN(lec_time-lec_point)
  FROM lecture

�� ���� �� ���� ���� �����̸� �տ� ���ڰ� ũ��? �۴�?


SELECT lec_id, lec_time ���ǽð�, lec_point ����, 
       DECODE(SIGN(lec_time-lec_point), -1, '��Ÿ����', 1, '�������', '�Ϲݰ���') as ��������
  FROM lecture
  
�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
����7: �����Ͽ� �ش����ڿ� 01�� �ٿ��� 4�ڸ� ��ȣ�� �����, ȭ���Ͽ� 11, �����Ͽ� 21, 
      ����Ͽ�, 31, �ݿ��Ͽ� 41, ����Ͽ� 51,�Ͽ��Ͽ� 61�� �ٿ��� 4�ڸ� ��ȣ�� ����ٰ� �� �� 
      ��ȣ�� SELECT�ϴ� SQL�� ����� ���ÿ�. (���ڿ� ����: '31'||'11')
      
SELECT to_char(sysdate, 'mm') as ��,
       to_char(sysdate, 'dd') as ��,
       to_char(sysdate, 'day') as ����,
      (DECODE((to_char(sysdate, 'day')), 
            '������', to_char(sysdate, 'dd')||'01', 
            'ȭ����', to_char(sysdate, 'dd')||'11', 
            '������', to_char(sysdate, 'dd')||'21',
            '�����', to_char(sysdate, 'dd')||'31', 
            '�ݿ���', to_char(sysdate, 'dd')||'41', 
            '�����', to_char(sysdate, 'dd')||'51', 
            '�Ͽ���', to_char(sysdate, 'dd')||'61')) as ��ȣ
  FROM dual
 

SELECT to_char(sysdate, 'mm') as ��,
       to_char(sysdate, 'dd') as ��,
       to_char(sysdate, 'day') as ����,
       to_char(sysdate, 'dd')||(DECODE((to_char(sysdate, 'day')), '������', 01,
                                                                  'ȭ����', 11,
                                                                  '������', 21,
                                                                  '�����', 31,
                                                                  '�ݿ���', 41,
                                                                  '�����', 51,
                                                                  '�Ͽ���', 61)) as ��ȣ
  FROM dual
  

   
  
SELECT to_char(sysdate, 'mm') as ��,
       to_char(sysdate, 'dd') as ��,
       to_char(sysdate, 'day') as ����,
      (DECODE(to_char(sysdate, 'day'), 'ȭ����', to_char(sysdate, 'dd')||'11', 0)) as ��ȣ
  FROM dual
  
  
  
SELECT to_char(sysdate, 'mm') as ��,
       to_char(sysdate, 'dd') as ��,
       to_char(sysdate, 'day') as ����,
      (DECODE('dd', '30', 1111, '31', 2222, 0)) as ��ȣ
  FROM dual
 

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
����8: ��� ���̺��� job�� 'CLERK'�� ����� �޿� ��, 'SALESMAN'�� ����� �޿��� ���� ���ϰ�
     ������ job�� ���ؼ��� ��Ÿ�� ������ ���Ͻÿ�.
     
SELECT * FROM emp


SELECT DECODE(job, 'CLERK', sal) as "CLERK �޿� ��",
       DECODE(job, 'SALESMAN', sal) as "SALESMAN �޿� ��",
       DECODE(job, 'CLERK', null, 'SALESMAN', null, sal) as "��Ÿ �μ� �޿� ��"
  FROM emp
  

SELECT SUM(DECODE(job, 'CLERK', sal)) as "CLERK �޿� ��",
       SUM(DECODE(job, 'SALESMAN', sal)) as "SALESMAN �޿� ��",
       SUM(DECODE(job, 'CLERK', null, 'SALESMAN', null, sal)) as "��Ÿ �μ� �޿� ��"
  FROM emp
  
  
