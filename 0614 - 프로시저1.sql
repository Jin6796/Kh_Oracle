Select * from member

select * from emp



프로시저 - 전체목록조회

CREATE OR REPLACE PROCEDURE proc_dept_list(p_dept OUT SYS_REFCURSOR)
IS
BEGIN
 -- 실행문
  OPEN p_dept
  FOR SELECT deptno, dname, loc FROM dept;
END;


CREATE OR REPLACE PROCEDURE proc_emp_list(p_emp OUT SYS_REFCURSOR)
IS
BEGIN
 -- 실행문
  OPEN p_emp
  FOR SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp;
END;

-- 프로시저를 이용해 들을 땐 in, 출력을 위해 내보낼 땐 out을 사용한다.

CREATE OR REPLACE PROCEDURE proc_sal(v_ename IN varchar2, v_sal OUT number)
IS
BEGIN
  SELECT sal into v_sal
    FROM emp
   WHERE ename = v_ename;
END;

프로시저 안에서만 select문 안에 into를 사용할 수 있다.

CREATE OR REPLACE PROCEDURE proc_emp_list(p_emp OUT SYS_REFCURSOR)
IS
BEGIN
 -- 실행문
  OPEN p_emp
  FOR SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp a, dept b
       WHERE a.deptno = b.deptno;
END;




CREATE OR REPLACE PROCEDURE proc_emp_list(p_emp OUT SYS_REFCURSOR)
IS
BEGIN
 -- 실행문
  OPEN p_emp
  FOR SELECT a.empno, a.ename, b.dname FROM emp a, dept b
       WHERE a.deptno = b.deptno;
END;


CREATE OR REPLACE PROCEDURE proc_emp_list(p_emp OUT SYS_REFCURSOR)
IS
BEGIN
 -- 실행문
  OPEN p_emp
  FOR SELECT a.empno, a.ename, b.dname FROM emp a, dept b
       WHERE a.deptno = b.deptno;
  INSERT INTO dept(deptno, dname, loc) VALUES(81, '유지보수팀', '포항');
  commit;
END;

select * from dept