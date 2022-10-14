SELECT * FROM emp

SELECT * FROM emp
WHERE job='CLERK'

SELECT * FROM emp
WHERE job='CLERK' AND ename LIKE '%E%'

SELECT * FROM emp
WHERE job='CLERK' AND (ename LIKE '%E%' OR ename LIKE '%I%')

SELECT * FROM emp
WHERE job='CLERK' AND ename LIKE '%E%' AND sal > 1000

SELECT * FROM emp
WHERE job='CLERK' AND (ename LIKE '%E%' OR ename LIKE '%I%') AND sal > 900