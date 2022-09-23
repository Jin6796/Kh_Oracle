Select * from member

select * from emp



���ν��� - ��ü�����ȸ

CREATE OR REPLACE PROCEDURE proc_dept_list(p_dept OUT SYS_REFCURSOR)
IS
BEGIN
 -- ���๮
  OPEN p_dept
  FOR SELECT deptno, dname, loc FROM dept;
END;


CREATE OR REPLACE PROCEDURE proc_emp_list(p_emp OUT SYS_REFCURSOR)
IS
BEGIN
 -- ���๮
  OPEN p_emp
  FOR SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp;
END;

-- ���ν����� �̿��� ���� �� in, ����� ���� ������ �� out�� ����Ѵ�.

CREATE OR REPLACE PROCEDURE proc_sal(v_ename IN varchar2, v_sal OUT number)
IS
BEGIN
  SELECT sal into v_sal
    FROM emp
   WHERE ename = v_ename;
END;

���ν��� �ȿ����� select�� �ȿ� into�� ����� �� �ִ�.

CREATE OR REPLACE PROCEDURE proc_emp_list(p_emp OUT SYS_REFCURSOR)
IS
BEGIN
 -- ���๮
  OPEN p_emp
  FOR SELECT empno, ename, job, mgr, hiredate, sal, comm, deptno FROM emp a, dept b
       WHERE a.deptno = b.deptno;
END;




CREATE OR REPLACE PROCEDURE proc_emp_list(p_emp OUT SYS_REFCURSOR)
IS
BEGIN
 -- ���๮
  OPEN p_emp
  FOR SELECT a.empno, a.ename, b.dname FROM emp a, dept b
       WHERE a.deptno = b.deptno;
END;


CREATE OR REPLACE PROCEDURE proc_emp_list(p_emp OUT SYS_REFCURSOR)
IS
BEGIN
 -- ���๮
  OPEN p_emp
  FOR SELECT a.empno, a.ename, b.dname FROM emp a, dept b
       WHERE a.deptno = b.deptno;
  INSERT INTO dept(deptno, dname, loc) VALUES(81, '����������', '����');
  commit;
END;

select * from dept