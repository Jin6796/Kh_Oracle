CREATE VIEW v_emp1(e_no, e_name)
AS SELECT empno, ename
     FROM emp
    WHERE deptno=10
    
SELECT e_no, e_name FROM v_emp1



SELECT point_nu FROM t_giftpoint
 WHERE name_vc = '영화티켓'
 
SELECT mem.name_vc, mem.point_nu, point.point_nu
  FROM t_giftmem mem,
       (
        SELECT point_nu FROM t_giftpoint
         WHERE name_vc = '영화티켓'
       )point
 WHERE mem.point_nu >= point.point_nu
 
 
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
Q. 우리 회사에 근무하는 사원 중에서 ALLEN보다 급여를 더 많이 받는 사원의 이름과 급여를 출력하는 SQL문을 작성하세요.

SELECT * FROM emp

SELECT sal 
  FROM emp 
 WHERE ename = 'ALLEN'

SELECT ename 이름, sal 급여
  FROM emp
 WHERE sal > (SELECT sal FROM emp WHERE ename = 'ALLEN')