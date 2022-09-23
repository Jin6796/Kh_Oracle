SELECT mem_no, mem_id, mem_pw, 
       mem_name, mem_zipcode, mem_address
  FROM member
 ORDER BY mem_no desc
 
SELECT * FROM member
WHERE mem_no=10

SELECT seq_member_no.nextval FROM dual

delete from member

commit;


아이디와 비밀번호가 모두 일치하면 mem_name을 조회,
비밀번호가 틀리면 0을 반환.
아이디가 존재하지 않으면 -1 반환

SELECT 
       CASE WHEN mem_id =:id THEN 
        CASE WHEN mem_pw =:pw THEN mem_name
            ELSE '0'
        END
       ELSE '-1' 
       END 
       as mem_name
  FROM member
 
  
SELECT mem_name
  FROM (SELECT 
         CASE WHEN mem_id =:id THEN 
          CASE WHEN mem_pw =:pw THEN mem_name
              ELSE '0'
          END
         ELSE '-1' 
         END as mem_name
          FROM member
        ORDER BY mem_name desc)
 WHERE rownum=1
        
 commit;
  
SELECT * FROM member
ORDER BY mem_no

DELETE
  FROM member
WHERE mem_no = 22