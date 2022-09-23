SELECT mem_no, mem_id, mem_pw, mem_name, mem_zipcode, mem_address
  FROM member
  
SELECT mem_no, mem_id, mem_pw, mem_name, mem_zipcode, mem_address
  FROM member
 WHERE 
 
SELECT 1
  FROM dual
 WHERE EXISTS (SELECT mem_name 
                 FROM member 
                WHERE mem_id =:x)
                
edit member

SELECT length(mem_id), length('tomato '), length('tom ato') FROM member
 WHERE mem_id = 'tomato'
 
 
INSERT INTO member(mem_no, mem_id, mem_pw, mem_name, mem_zipcode, mem_address)
VALUES(6, 'jin', 'jin123', '경진', '05268', '서울시 송파구 위례동')


SELECT * FROM member

rollback;