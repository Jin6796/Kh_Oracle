select sysdate
from dual

SELECT to_char(sysdate, 'yyyy-mm-dd')
      ,to_char(45000, '999,999')
      ,to_date('2022-05-05')+1
  FROM dual
  
SELECT to_char(sysdate, 'yyyy-mm-dd')
      ,to_char(45000, '999,999')
      ,to_date('2022-05-05')
  FROM dual
  
  
SELECT to_date('190505')
      ,to_char(to_date('190505'), 'YYYY-mm-dd')
  FROM dual


SELECT to_char(to_date('190505'), 'yyyy��mm��dd��') FROM dual; 

SELECT to_char(to_date('190505'), 'YYYY"�� "MM"�� "DD"��"' ) FROM dual

SELECT to_char(to_date('20/10/13'), 'yyyy-mm-dd') FROM dual
  
  
SELECT to_char('20/10/13', 'yyyy-mm-dd') FROM dual;

SELECT to_date('20/10/13', yyyy-mm-dd) FROM dual;


���� �ذ�

1. �Ʒ��� SQL������ �μ� �� ��� ������ 2,800,000�� �ʰ��ϴ� �μ��� ��ȸ�� ���̴�.
����� �ùٸ��� �ʴٰ� �� ��, �� ����(20��)�� �ùٸ��� ������ ��ġ����(20��)�� ���� �׸� �°� ����Ͻÿ�. (�� 40��)

SELECT DEPT, SUM(SALARY) �հ�, FLOOR(AVG(SALARY)) ���, COUNT(*) �ο���
FROM EMP
WHERE SALARY > 2800000
GROUP BY DEPT
ORDER BY DEPT ASC;


2. ROWNUM�� �̿��ؼ� ������ ���� ���� 3���� �������� �Ͽ�����, �ùٸ� ����� ��ȸ ���� �ʾҴ�.
����� �߸� ��ȸ�� ������ [����](30��)�� ����ϰ�, �Ʒ��� ������ �����Ͽ� [��ġ����](30��)�� ����Ͻÿ�. (�� 60��)

[SQL����]

SELECT ROWNUM, EMPNAME, SAL
FROM EMP
WHERE ROWNUM <= 3
ORDER BY SAL DESC;


SELECT * FROM emp WHERE empno = to_number('7499')


SELECT to_char('20/10/13'), 
       to_date('20/10/13'),
       to_char(to_date('20/10/13'), 'YYYY"��"MM-DD')
  FROM dual