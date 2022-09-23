SELECT * FROM dept

SELECT empno FROM emp  --pk. 인덱스가 있어서 자동으로 정렬된다. -- 시간이 절약!

SELECT empno FROM emp
 WHERE empno = 7566
 
SELECT empno FROM emp
 WHERE NVL(empno,0) = 7566 -- empno가 null일 때 0을 출력해준다

SELECT /*+index_desc(emp PK_EMP) */ empno
  FROM emp
 
SELECT ename FROM emp 
ORDER BY ename desc

create index i_ename     -- pk가 아니기 때문에 unique(X)
on emp(ename)

SELECT /*index_desc(emp i_ename)*/ename FROM emp

SELECT ename FROM emp
 WHERE ename = 'XXX'
 
-- 인덱스가 있는 컬럼이더라도 가공하면 인덱스를 사용할 수 없다. 
 
SELECT ename FROM emp
 WHERE NVL(ename, '0') = 'XXX'
 
SELECT ename, deptno--deptno:외래키(중복허용)
  FROM emp
  
SELECT count(ename), deptno
  FROM emp
 GROUP BY deptno
 
--부서번호 40도 나오게 해볼까?

SELECT * FROM dept

SELECT * FROM emp

SELECT count(ename), count(NVL(deptno,0))
  FROM emp
 GROUP BY deptno
  

 -- 56(14*4)건이 조회된다 (일어날 수 있는 모든 경우의 수) 
 -- 카타시안의 곱 - 묻지마 조인
 
SELECT count(emp.ename), dept.deptno, dept.dname
  FROM emp, dept
 WHERE emp.deptno(+) = dept.deptno  -- national join = equal join 
GROUP BY dept.deptno, dept.dname    --      : 양쪽에 모두 있는 것만 나온다.
 
양쪽(emp[10,20,30,], dept[10,20,30,40,]) 테이블에 있는 것이 아닌
한 쪽 테이블(dept)에만 있고 다른 한 쪽(emp)에는 없는 것(40)을 출력할 때
나(emp)는 null로 하더라도 너(dept)는 있으면 보여줄래   >> null이 와야하는 곳에 (+)

                                    
SELECT count(emp.ename), dept.deptno
  FROM emp, dept
 WHERE (emp.deptno = dept.deptno) -- and nvl(emp.deptno, 0)
GROUP BY dept.deptno
 

내일부터 서브쿼리랑 인라인뷰!!!!!!!!3

null = 모른다
모르는 걸 셀 수 있나? >> 없쥬~

ename은 not null.
pk의 제약조건:  not null, unique, unique index


comm에 왜 널이 있지? - 설계가 잘못됨

SELECT COUNT(ename), COUNT(NVL(comm,0)), COUNT(*)
  FROM emp
  
null인 건 굳이 세지 않는다. null인 경우를 굳이 계산하지 않는다.

SELECT sum(comm) FROM emp

SELECT distinct(deptno) FROM emp

SELECT deptno FROM emp
UNION ALL
SELECT deptno FROM dept

SELECT deptno FROM emp
UNION
SELECT deptno FROM dept