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
         
SELECT
      ROWNUM RNO
  FROM (
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
       ) 
       
SELECT 등급, CNT as 인원수
  FROM (
        SELECT count(emp_name)||'명' CNT,
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
               )   
ORDER BY 등급                   
       
          