CREATE OR REPLACE PROCEDURE proc_emp_salupdate(p_empno IN number, msg OUT varchar2)
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
    WHERE empno = p_empno;
    commit;
   msg := my_name||' 사원의 '||my_sal||' 급여가 '||up_sal||'으로 인상되었습니다.';
END;