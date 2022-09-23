문제 1. temp 테이블에서 사번, 성명, 부서코드, 부서명칭(dept_name)을 출력해주세요.

SELECT * FROM temp

SELECT * FROM tdept

SELECT * FROM temp, tdept

SELECT * FROM temp a, tdept b
 WHERE a.dept_code = b.dept_code
 
SELECT emp_id 사번, emp_name 성명, a.dept_code 부서코드, dept_name 부서명칭 
  FROM temp a, tdept b
 WHERE a.dept_code = b.dept_code
ORDER BY 부서코드

SELECT emp_id 사번, emp_name 성명, b.dept_code 부서코드, dept_name 부서명칭 --PK가 있는 곳에서 가져오는 게 좋음(속도차이) -- 자동정렬
  FROM temp a, tdept b
 WHERE a.dept_code = b.dept_codel
 

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제 2. tcom의 work_year가 2001인 자료와 temp를 사번으로 연결해서 조인한 후 
      comm을 받는 직원의 성명과 'salary+comm'을 조회하는 sql문을 작성하세요.

SELECT * FROM tcom -- 

SELECT * FROM temp

SELECT emp_name 성명, 
       to_char(salary,'999,999,999')||'원' 연봉, 
       to_char(comm,'999,999,999')||'원' 성과금, 
       to_char(salary+comm,'999,999,999')||'원' as"연봉+성과금"
  FROM tcom a, temp b
 WHERE a.emp_id=b.emp_id 
   AND work_year = 2001
 
 
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제 3. temp와 emp_level을 이용해 emp_level 과장 직급의 연봉 상한/하한 범위 내에 드는 연봉을 가진 직원의
      사번과 성명, 직급, salary를 읽어오는 sql문을 작성하시오.  (between - and)
      
SELECT * FROM temp

SELECT * FROM emp_level

SELECT salary FROM temp WHERE 37000000<= salary <=75000000

SELECT emp_id 사번, emp_name 성명, b.lev 직급, to_char(salary,'999,999,999')||'원' 연봉
  FROM temp a, emp_level b
 WHERE a.lev = b.lev 


SELECT a.emp_id 사번, a.emp_name 성명, a.lev 직급, to_char(a.salary,'999,999,999')||'원' 연봉
  FROM temp a, emp_level b
 WHERE a.salary BETWEEN from_sal AND to_sal AND b.lev='과장'
 
 
SELECT salary, lev
  FROM temp
 WHERE lev!='수습'
ORDER BY lev
 


ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제 4. 각 사번 별 성명과 salary, 연봉상/하한금액을 보고자 한다. temp와 emp_level을 조인하여 결과를 보여주되 
       수습 사원의 경우 성명, salary 까지만이라도 나올 수 있도록 쿼리문을 작성하시오. (outer join)
      
SELECT * FROM temp

SELECT * FROM emp_level

SELECT * FROM temp, emp_level

SELECT a.emp_id, emp_name, a.lev, a.salary, b.to_sal, b.from_sal
  FROM temp a, emp_level b
  
SELECT a.emp_id, emp_name, a.lev, a.salary, b.to_sal, b.from_sal
  FROM temp a, emp_level b
 WHERE a.lev = b.lev  

SELECT a.emp_id 사번, a.emp_name 성명, a.lev 직급, 
       to_char(a.salary,'999,999,999')||'원' 연봉, 
       to_char(b.to_sal,'999,999,999') 상한, 
       to_char(b.from_sal,'999,999,999') 하한
  FROM temp a, emp_level b
 WHERE a.lev = b.lev(+) 
 
SELECT a.emp_id 사번, a.emp_name 성명, a.lev 직급, 
       to_char(a.salary,'999,999,999')||'원' 연봉, 
       to_char(b.to_sal,'999,999,999') 상한, 
       to_char(b.from_sal,'999,999,999') 하한
  FROM temp a LEFT OUTER JOIN emp_level b
    ON a.lev = b.lev
 


ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제 5. tdept 테이블에 자신의 상위 부서정보를 관리하고 있다. 
      이 테이블을 이용하여 부서코드 부서명, 상위부서코드, 상위부서명을 읽어오는 쿼리문을 작성하시오.
      
SELECT * FROM temp

SELECT * FROM tdept --parent_dept


SELECT a.dept_code 부서코드, a.dept_name 부서명, b.parent_dept 상위부서코드 , b.dept_name 상위부서명
FROM tdept a, tdept b
WHERE a.parent_dept = b.dept_code



ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
도전문제
temp와 tdept를 이용하여 다음 컬럼을 보여주는 SQL을 만들어 보자.
상위부서가 'CA0001'인 부서에 소속된 직원을 
1.사번, 2.성명, 3.부서코드 4.부서명, 5.상위부서코드, 6.상위부서명, 7.상위부서장코드, 8.상위부서장성명
순서로 보여주면 된다.

SELECT * FROM TEMP order by dept_code

SELECT * FROM tdept

SELECT a1.emp_id as 사번, a1.emp_name 성명, 
       b1.dept_code 부서코드, b1.dept_name 부서명, b2.dept_code 상위부서코드, 
       b2.dept_name 상위부서명, b2.boss_id 상위부서장코드, a2.emp_name 상위부서장성명
  FROM temp a1, temp a2 ,tdept b1, tdept b2
 WHERE a1.dept_code   = b1.dept_code
   AND b1.parent_dept = 'CA0001'
   AND b1.parent_dept = b2.dept_code
   AND b2.boss_id     = a2.emp_id
 
 b1.parent_dept > b2.dept_code
 
 
SELECT a1.emp_id    as 사번,
       a1.emp_name  as 성명,
       b1.dept_code as 부서코드,
       b1.dept_name as 부서명,
       b2.dept_code as 상위부서코드,
       b2.dept_name as 상위부서명,
       b2.boss_id   as 상위부서장코드,
       a2.emp_name  as 상위부서장성명
  FROM temp a1, tdept b1
 WHERE a1.dept_code = b1.dept_code
 
 
SELECT a1.emp_id    as 사번,
       a1.emp_name  as 성명,
       b1.dept_code as 부서코드,
       b1.dept_name as 부서명
  FROM temp a1, tdept b1
 WHERE a1.dept_code = b1.dept_code
 
 
SELECT a1.emp_id    as 사번,
       a1.emp_name  as 성명,
       b1.dept_code as 부서코드,
       b1.dept_name as 부서명,
       b2.dept_code as 상위부서코드,
       b2.dept_name as 상위부서명
  FROM temp a1, tdept b1, tdept b2
 WHERE a1.dept_code   = b1.dept_code
   AND b1.parent_dept = b2.dept_code
   
   
SELECT a1.emp_id    as 사번,
       a1.emp_name  as 성명,
       b1.dept_code as 부서코드,
       b1.dept_name as 부서명,
       b2.dept_code as 상위부서코드,
       b2.dept_name as 상위부서명,
       b2.boss_id   as 상위부서장코드,
       a2.emp_name  as 상위부서장성명
  FROM temp a1, temp a2, tdept b1, tdept b2
 WHERE a1.dept_code   = b1.dept_code
   AND b1.parent_dept = b2.dept_code
   AND b2.boss_id     = a2.emp_id
   
   
SELECT * FROM emp