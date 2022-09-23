CREATE OR REPLACE PROCEDURE proc_deptlist(pdeptno IN number, rc_dept OUT sys_refcursor)
IS
BEGIN
    OPEN rc_dept
     FOR SELECT deptno, dname, loc FROM dept
          WHERE deptno >= pdeptno;
END;