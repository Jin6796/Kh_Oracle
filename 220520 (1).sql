SELECT deptno, dname, loc FROM dept

SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp

--테이블에 저장된 내용 삭제하기
무결성 제약조건(FK-DEPTNO) 때문에 삭제가 불가하다.
마음대로 삭제가 불가하다 - 데이터를 안전하게 보관할 수 있다.
인덱스가 제공된다. (색인 - 검색 속도가 빠름)

DELETE FROM dept

DELETE FROM emp

rollback

dept deptno pk이고 - 기본키 (primary key)
emp deptno fk이다  - 외래키 (foreign key)

SELECT 컬럼명1, 컬럼명2, ... 
  FROM 집합이름
 WHERE 컬럼명 = 값
 

우리 회사에 근무하는 사람 중에 scott이라는 사람이 있니?

SELECT empno
 FROM  emp
WHERE ename = 'SCOTT'

우리 회사에 근무하는 사람 중에 scott이라는 사람이 있으면 1, 없으면 0을 출력하는 코드를 작성하시오.

SELECT 1 as "존재하니 (1:응, 2:아니)"
 FROM  emp
WHERE ename = 'SCOTT'

우리 회사에 근무하는 사람 중에 scott이라는 사람은 몇 명이니?

SELECT 함수명(컬럼명)
 FROM  emp
WHERE ename = 'SCOTT'

tomato 아이디가 존재하니?

SELECT 1 as "존재하니 (1:응, 2:아니)"
 FROM  emp
WHERE ename  = 'SCOTT'

tomato 아이디가 몇 개 있니? (X)

edit member