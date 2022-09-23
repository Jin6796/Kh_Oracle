temp의 자료를 salary로 분류하여 3천만원 이하는 D, 3천만원 초과 5천만원 이하는 C, 5천만원 초과 7천만원 이하는 B, 
7천만원 초과는 A를 등급으로 분류하여 등급별 인원수를 출력하는 sql문을 작성하세요.

SELECT * FROM temp

SELECT emp_name, salary FROM temp
  
SELECT emp_name, salary,
       CASE 
         WHEN salary <= 30000000 THEN 'D'
         WHEN salary BETWEEN 30000001 AND 50000000 THEN 'C'
         WHEN salary BETWEEN 50000001 AND  70000000 THEN 'B'
         WHEN 70000000 < salary THEN 'A'
         END AS 등급
  FROM temp
 ORDER BY 등급
 
 
SELECT COUNT (CASE WHEN salary > 70000000 THEN 'A' END) as A
  FROM temp 
  
 
SELECT count(emp_name)||'명' as 인원수,
      (CASE 
         WHEN salary <= 30000000 THEN 'D'
         WHEN salary BETWEEN 30000001 AND 50000000 THEN 'C'
         WHEN salary BETWEEN 50000001 AND  70000000 THEN 'B'
         WHEN 70000000 < salary THEN 'A'
         END) AS 등급
  FROM temp
GROUP BY CASE 
         WHEN salary <= 30000000 THEN 'D'
         WHEN salary BETWEEN 30000001 AND 50000000 THEN 'C'
         WHEN salary BETWEEN 50000001 AND  70000000 THEN 'B'
         WHEN 70000000 < salary THEN 'A'
         END 
ORDER BY CASE 
         WHEN salary <= 30000000 THEN 'D'
         WHEN salary BETWEEN 30000001 AND 50000000 THEN 'C'
         WHEN salary BETWEEN 50000001 AND  70000000 THEN 'B'
         WHEN 70000000 < salary THEN 'A'
         END
         
         
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ         
아이디와 비밀번호가 일치하면 1을, 일치하지 않으면 0을 반환하고, 아이디가 존재하지 않으면 -1을 반환하는 SELECT문을 작성하세요
 (case문 사용)

SELECT 1 
  FROM member
 WHERE mem_id=:x
   AND mem_pw=:y
   
SELECT 0
  FROM member
 WHERE mem_id=:x
   AND mem_pw!=:y
   
SELECT -1
  FROM member
 WHERE EXISTS (SELECT mem_name
                 FROM member
                WHERE mem_id=:x
               )
               
               
SELECT *
  FROM member  
    
  
SELECT  
      (CASE
            WHEN mem_id=:x AND mem_pw =:y THEN 1
            WHEN mem_id=:x AND mem_pw!=:y THEN 0
            WHEN mem_id!=:x THEN -1
       END 
       ) as 체크
  FROM member  
  
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
최종 답안: 

SELECT *
  FROM (SELECT  
              CASE
                 WHEN mem_id=:x AND mem_pw =:y THEN 1
                 WHEN mem_id=:x AND mem_pw!=:y THEN 0
                 WHEN mem_id!=:x THEN -1
              END as 체크
        FROM member
        ORDER BY 체크 desc
        )
  WHERE rownum = 1
  
  

  
  
  
SELECT * FROM emp

SELECT max(empno)+1 FROM emp

SELECT empno FROM emp
ORDER BY empno desc

SELECT empno
  FROM (SELECT empno
          FROM emp
        ORDER BY empno desc
        )  
 WHERE rownum = 1
  
  
  

          
  