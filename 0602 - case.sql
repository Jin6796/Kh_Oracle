temp�� �ڷḦ salary�� �з��Ͽ� 3õ���� ���ϴ� D, 3õ���� �ʰ� 5õ���� ���ϴ� C, 5õ���� �ʰ� 7õ���� ���ϴ� B, 
7õ���� �ʰ��� A�� ������� �з��Ͽ� ��޺� �ο����� ����ϴ� sql���� �ۼ��ϼ���.

SELECT * FROM temp

SELECT emp_name, salary FROM temp
  
SELECT emp_name, salary,
       CASE 
         WHEN salary <= 30000000 THEN 'D'
         WHEN salary BETWEEN 30000001 AND 50000000 THEN 'C'
         WHEN salary BETWEEN 50000001 AND  70000000 THEN 'B'
         WHEN 70000000 < salary THEN 'A'
         END AS ���
  FROM temp
 ORDER BY ���
 
 
SELECT COUNT (CASE WHEN salary > 70000000 THEN 'A' END) as A
  FROM temp 
  
 
SELECT count(emp_name)||'��' as �ο���,
      (CASE 
         WHEN salary <= 30000000 THEN 'D'
         WHEN salary BETWEEN 30000001 AND 50000000 THEN 'C'
         WHEN salary BETWEEN 50000001 AND  70000000 THEN 'B'
         WHEN 70000000 < salary THEN 'A'
         END) AS ���
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
         
         
�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�         
���̵�� ��й�ȣ�� ��ġ�ϸ� 1��, ��ġ���� ������ 0�� ��ȯ�ϰ�, ���̵� �������� ������ -1�� ��ȯ�ϴ� SELECT���� �ۼ��ϼ���
 (case�� ���)

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
       ) as üũ
  FROM member  
  
�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
���� ���: 

SELECT *
  FROM (SELECT  
              CASE
                 WHEN mem_id=:x AND mem_pw =:y THEN 1
                 WHEN mem_id=:x AND mem_pw!=:y THEN 0
                 WHEN mem_id!=:x THEN -1
              END as üũ
        FROM member
        ORDER BY üũ desc
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
  
  
  

          
  