DDL(객체생성) - DBA 

DCL(권한) - DB서버 운영자

DML(SELECT, INSERT, DELETE, UPDATE): 데이터 조작어

조회(배송조회, 주문조회의 경우...)

입력, 수정, 삭제 - 실력차가 거의 없다

SELECT 컬럼명1, 컬럼명2, .....
 FROM 집합이름(SELECT문-인라인뷰)
 
SELECT ename, job
 From emp

SELECT ename, job, hiredate, sal
 From emp
 
SELECT ename as "이름", job as "부서", hiredate as "입사일"
 From emp

50만명
옵티마이저 - 일꾼 - JVM

우리 회사에 근무하는 사원 중에서 ALLEN 사원의 급여는 얼마인가요?

우리 회사에 근무하는 사원 중에서 급여가 1000달러 이상인 사원의 이름과 급여를 출력하는 select문을 작성하시오.

SELECT ename as "이름", job as "부서", hiredate as "입사일", sal as "급여"
 From emp
WHERE ename = 'ALLEN'

SELECT ename as "이름", sal as "급여"
 From emp
WHERE SAL >= 1000

SELECT 
    empno "사원번호"
   ,empno as "사원번호22" --표준
   ,empno 사원번호
 FROM 

SELECT ename as "이름", sal as "급여"
 From emp
WHERE SAL >= 2000

SELECT ename as "이름", sal as "급여"
 From emp
WHERE SAL >= 2000
and deptno = 20

SELECT ename as "이름", sal as "급여"
 From emp
WHERE SAL >= 2000
or deptno = 20

or은 합집합이라 둘 중 하나만 만족하면 된다.

SELECT sal
 From emp
WHERE ename = 'ALLEN'
