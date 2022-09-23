variable p_emp refcursor;
exec proc_emp_list(:p_emp);
print p_emp;

SELECT * FROM dept

SELECT * FROM emp

SELECT deptno, avg(sal) 평균급여
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
 
 

사원번호를 입력 받아서 사원이 속한 부서별 평균 급여를 구한 다음 
그 사원의 급여가 평균보다 많으면 10% 인상을, 적으면 20% 인상을 emp테이블에 반영하는 프로시저를 작성하시오.

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
   avg_sal number;          -- 평균 급여를 담는 변수
   my_name varchar2(30);    -- 급여인상 대상자의 이름을 담을 변수
   my_sal  number;          -- 내가 받는 급여를 담을 변수
   up_sal  number;          -- 수정된 급여액을 담을 변수
BEGIN
   SELECT ename, sal INTO my_name, my_sal
     FROM emp
    WHERE empno = p_empno; -- 한 건일 때에만 into문 사용이 가능하다.
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
   msg:=my_name||' 사원의 '||' 급여가 '||up_sal||'으로 인상되었습니다.';
END;




       UPDATE emp
       SET sal = sal * 1.1
       WHERE empno = v_empno;
END update_sal;