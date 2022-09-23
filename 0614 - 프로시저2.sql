variable p_emp refcursor;
exec proc_emp_list(:p_emp);
print p_emp;

SELECT * FROM dept

SELECT * FROM emp

SELECT deptno, avg(sal) ��ձ޿�
  FROM emp
GROUP BY deptno

SELECT avg(sal)
  FROM emp
 WHERE deptno=: x
GROUP BY deptno

UPDATE emp
   SET sal = sal * 1.1
 WHERE sal > avg(Sal) and deptno=:x
 
SELECT deptno, ename, sal, avg(sal)
  FROM emp
 WHERE deptno=:x
GROUP BY deptno
  HAVING sal > avg(sal)
 
 

�����ȣ�� �Է� �޾Ƽ� ����� ���� �μ��� ��� �޿��� ���� ���� 
�� ����� �޿��� ��պ��� ������ 10% �λ���, ������ 20% �λ��� emp���̺� �ݿ��ϴ� ���ν����� �ۼ��Ͻÿ�.

CREATE OR REPLACE PROCEDURE proc_emp_salupdate (v_empno IN number)
IS
BEGIN
   OPEN p_emp  
       UPDATE emp
          SET sal = sal * 1.1
        WHERE empno = v_empno
          AND sal
     
END;



CREATE OR REPLACE PROCEDURE proc_emp_salupdate (p_empno IN number, msg OUT)
IS 
   v_rate  number;          -- 1.1 or 1.2
   avg_sal number;          -- ��� �޿��� ��� ����
   my_name varchar2(30);    -- �޿��λ� ������� �̸��� ���� ����
   my_sal  number;          -- ���� �޴� �޿��� ���� ����
   up_sal  number;          -- ������ �޿����� ���� ����
BEGIN
   SELECT ename, sal INTO my_name, my_sal
     FROM emp
    WHERE empno = p_empno; -- �� ���� ������ into�� ����� �����ϴ�.
   SELECT avg(sal) INTO avg_sal
     FROM emp
    WHERE deptno = (SELECT deptno
                      FROM emp
                     WHERE empno = p_empno);
   IF my_sal > avg_sal THEN v_rate:=1.1;
   ELSE v_rate:=1.2; 
   END IF;
   up_sal:= my_sal*v_rate;
   UPDATE emp SET sal = up_sal
    WHERE empno = p_empno
   commit;
   msg:=my_name||' ����� '||' �޿��� '||up_sal||'���� �λ�Ǿ����ϴ�.';
END;




       UPDATE emp
       SET sal = sal * 1.1
       WHERE empno = v_empno;
END update_sal;