SELECT emp.deptno �μ���ȣ, dname �μ��̸�, loc ����
  FROM emp, dept
 WHERE emp.deptno = dept.deptno
 
SELECT * FROM dept

INSERT INTO dept(deptno, dname, loc)
            VALUES(71, '����1��', '������')
            
int result = pstmt.executeUpdate();

commit;

rollback;

UPDATE dept
   SET dname = '����2��', loc = '������'   
 WHERE deptno = 71
 
DELETE FROM dept
 WHERE deptno = 71

DELETE FROM dept
 WHERE deptno IN (71,40)