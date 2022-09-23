SELECT emp.deptno 부서번호, dname 부서이름, loc 지역
  FROM emp, dept
 WHERE emp.deptno = dept.deptno
 
SELECT * FROM dept

INSERT INTO dept(deptno, dname, loc)
            VALUES(71, '개발1팀', '서귀포')
            
int result = pstmt.executeUpdate();

commit;

rollback;

UPDATE dept
   SET dname = '개발2팀', loc = '거제도'   
 WHERE deptno = 71
 
DELETE FROM dept
 WHERE deptno = 71

DELETE FROM dept
 WHERE deptno IN (71,40)