SELECT 1+5, 6-2, 2*3, 10/2 FROM dual

패턴

SELECT count(empno) FROM emp

SElECT count(empno)
  FROM (SELECT empno FROM emp WHERE sal >= 2000) - 인라인뷰 - 보안 - 금융권
  
SELECT empno FROM emp WHERE sal >= 2000

SELECT 1 FROM dual
UNION ALL --(합집합)
SELECT 2 FROM dual
UNION ALL
SELECT 3 FROM dual


SELECT deptno FROM dept
MINUS -- (차집합)
SELECT deptno FROM emp

SELECT deptno FROM dept
INTERSECT -- (교집합)
SELECT deptno FROM emp

DELETE 