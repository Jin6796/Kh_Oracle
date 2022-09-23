SELECT * FROM dept

SELECT * FROM emp

Á÷¾÷, ºÎ¼­º° SAL ÇÕ

SELECT SUM(DECODE(job, 'CLERK', sal))
  FROM emp
  
SELECT dname, sal, job,
       SUM(DECODE(job, 'CLERK', sal))
  FROM emp, (SELECT dname FROM dept)d
 WHERE deptno IN (SELECT deptno
                    FROM dept)
GROUP BY dname, sal, job

SELECT deptno, JOB, sal
  FROM emp
ORDER BY deptno


SELECT DECODE(c.rno, 1, dname, 2, 'ÃÑ°è') as dname,
       SUM(DECODE(job, 'CLERK', sal)) as clerk,
       SUM(DECODE(job, 'MANAGER', sal)) as manager,
       SUM(DECODE(job, 'CLERK', null, 'MANAGER', null, sal)) as etc,
       SUM(sal) as dept_sal
  FROM emp a, dept b, (SELECT 1 rno FROM dual
                       UNION ALL
                       SELECT 2 FROM dual)c
 WHERE a.deptno = b.deptno
GROUP BY DECODE(c.rno, 1, dname, 2, 'ÃÑ°è')
ORDER BY dname


CLERKÀÏ ¶§ sal - ÀÎ¶óÀÎºä »ç¿ëÇØ¼­ (14*4)*2·Î ¸¸µé¾îº¸ÀÚ. À§¿¡´Â 14*4*2


SELECT DECODE(c.rno, 1, dname, 2, 'ÃÑ°è') as dname,
       SUM(DECODE(job, 'CLERK', sal)) as clerk,
       SUM(DECODE(job, 'MANAGER', sal)) as manager,
       SUM(DECODE(job, 'CLERK', null, 'MANAGER', null, sal)) as etc,
       SUM(sal) as dept_sal
  FROM emp a, (SELECT dname, deptno FROM dept)b, 
              (SELECT 1 rno FROM dual UNION ALL SELECT 2 FROM dual)c
 WHERE a.deptno = b.deptno
GROUP BY DECODE(c.rno, 1, dname, 2, 'ÃÑ°è')
ORDER BY dname


SELECT b.dname, 
       SUM(DECODE(job,'CLERK', sal)) clerk,
       SUM(DECODE(job, 'MANAGER', sal)) as manager,
       SUM(DECODE(job, 'CLERK', null, 'MANAGER', null, sal)) as etc,
       SUM(sal) as dept_sal
FROM emp a, (SELECT dname, deptno FROM dept)b,
            (SELECT DECODE(c.rno, 1, dname, 2, 'ÃÑ°è') as dname 
               FROM (SELECT 1 rno FROM dual UNION ALL SELECT 2 FROM dual))c
 WHERE a.deptno = b.deptno
GROUP BY b.dname
ORDER BY b.dname


SELECT deptno, 
       SUM(DECODE(job,'CLERK', sal)) clerk,
       SUM(DECODE(job, 'MANAGER', sal)) as manager,
       SUM(DECODE(job, 'CLERK', null, 'MANAGER', null, sal)) as etc, SUM(sal)
  FROM emp
GROUP BY deptno


SELECT dname, 
       SUM(DECODE(job,'CLERK', sal)) clerk,
       SUM(DECODE(job, 'MANAGER', sal)) as manager,
       SUM(DECODE(job, 'CLERK', null, 'MANAGER', null, sal)) as etc, 
       SUM(sal) as dept_sal
  FROM emp, dept                  
 WHERE emp.deptno=dept.deptno
GROUP BY dname


SELECT DECODE(b.rno, 1, a.dname, 2, 'ÃÑ°è') as dname, clerk, manager, etc, dept_sal
  FROM(SELECT dname, 
            SUM(DECODE(job,'CLERK', sal)) clerk,
            SUM(DECODE(job, 'MANAGER', sal)) as manager,
            SUM(DECODE(job, 'CLERK', null, 'MANAGER', null, sal)) as etc, 
            SUM(sal) as dept_sal
             FROM emp, dept                  
            WHERE emp.deptno=dept.deptno
         GROUP BY dname)a,
       (SELECT rownum rno FROM dept WHERE rownum < 3)b
GROUP BY DECODE(b.rno, 1, a.dname, 2, 'ÃÑ°è'), clerk, manager, etc, dept_sal
ORDER BY dname



SELECT DECODE(b.rno, 1, a.dname, 2,'ÃÑ°è') as dname, 
       sum(clerk) clerk, sum(manager) manager, sum(etc) etc, sum(dept_sal) dept_sal
  FROM(SELECT dname, 
            SUM(DECODE(job,'CLERK', sal)) clerk,
            SUM(DECODE(job, 'MANAGER', sal)) as manager,
            SUM(DECODE(job, 'CLERK', null, 'MANAGER', null, sal)) as etc, 
            SUM(sal) as dept_sal
             FROM emp, dept                  
            WHERE emp.deptno=dept.deptno
         GROUP BY dname)a,
       (SELECT rownum rno FROM dept WHERE rownum < 3)b
GROUP BY DECODE(b.rno, 1, a.dname, 2, 'ÃÑ°è')
ORDER BY dname
 
