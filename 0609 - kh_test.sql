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


SELECT to_char(to_date('190505'), 'yyyy년mm월dd일') FROM dual; 

SELECT to_char(to_date('190505'), 'YYYY"년 "MM"월 "DD"일"' ) FROM dual

SELECT to_char(to_date('20/10/13'), 'yyyy-mm-dd') FROM dual
  
  
SELECT to_char('20/10/13', 'yyyy-mm-dd') FROM dual;

SELECT to_date('20/10/13', yyyy-mm-dd) FROM dual;


문제 해결

1. 아래의 SQL구문은 부서 별 평균 월급이 2,800,000을 초과하는 부서를 조회한 것이다.
결과가 올바르지 않다고 할 때, 그 원인(20점)과 올바르게 수정한 조치사항(20점)을 각각 항목에 맞게 기술하시오. (총 40점)

SELECT DEPT, SUM(SALARY) 합계, FLOOR(AVG(SALARY)) 평균, COUNT(*) 인원수
FROM EMP
WHERE SALARY > 2800000
GROUP BY DEPT
ORDER BY DEPT ASC;


2. ROWNUM을 이용해서 월급이 가장 높은 3명을 뽑을려고 하였으나, 올바른 결과가 조회 되지 않았다.
결과가 잘못 조회된 이유를 [원인](30점)에 기술하고, 아래의 구문을 수정하여 [조치내용](30점)에 기술하시오. (총 60점)

[SQL구문]

SELECT ROWNUM, EMPNAME, SAL
FROM EMP
WHERE ROWNUM <= 3
ORDER BY SAL DESC;


SELECT * FROM emp WHERE empno = to_number('7499')


SELECT to_char('20/10/13'), 
       to_date('20/10/13'),
       to_char(to_date('20/10/13'), 'YYYY"년"MM-DD')
  FROM dual