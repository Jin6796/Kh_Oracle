SELECT * FROM t_worktime --테이블 확인

SELECT workcd_vc, time_nu, 'rnk' as rnk
FROM t_worktime
ORDER BY time_nu -- 오름차순 정렬?

SELECT workcd_vc, time_nu,
RANK()OVER (ORDER BY time_nu) as rnk --집계 함수 사용
FROM t_worktime

SELECT workcd_vc, time_nu,
ROW_NUMBER()OVER (ORDER BY time_nu) as rnk -- 순서대로 고유 값을 반환하는 함수 사용
FROM t_worktime

SELECT workcd_vc, time_nu, rownum rnk
FROM t_worktime
ORDER BY time_nu

SELECT workcd_vc, time_nu, rownum rnk
FROM (SELECT workcd_vc, time_nu 
        FROM t_worktime 
      ORDER BY time_nu)
      
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ     
SELECT ename, deptno
  FROM emp

  부서명을 보고싶어요!!!!!!!!!!!!!!!!!!!!!
  
SELECT emp.deptno, dname FROM emp, dept

SELECT * FROM emp, dept -- emp와 dept 둘 다 보자

SELECT * 
  FROM emp, dept -- 둘 다 올 수 있음
WHERE emp.deptno = dept.deptno
  AND ename = 'SMITH'

SELECT deptno FROM emp, dept

SELECT a.deptno FROM emp a, dept b

SELECT b.deptno FROM emp a, dept b

SELECT empno FROM emp
  
20, 20 smith사원의 20을 보고 dept를 가서 20 값을 찾자 
부서 집합(부모)에서의              deptno가 기본키
사원 집합(자손)에서의 사원번호가 기본키, deptno는 외래키  
부서집합에 deptno를 받아서 태어난 자손이 사원집합이고 부모의 deptno가 자손으로 가서 외래키가 되었다.
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

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
 
 우리 회사에 근무하는 사원들에 대해서 부서별 사원 수를 출력하고 싶다.
 
SELECT empno FROM emp
GROUP BY empno

SELECT COUNT(empno) FROM emp
GROUP BY deptno

SELECT deptno, COUNT(empno) FROM emp
GROUP BY deptno



SELECT max(sal), max(ename) FROM emp
> ename 앞에 max를 붙여줌으로써 문법오류는 해결했지만 실행결과가 무의미하다. (의존관계가 없음)

SELECT max(sal) FROM emp
GROUP BY deptno

SELECT max(sal),deptno FROM emp
GROUP BY deptno