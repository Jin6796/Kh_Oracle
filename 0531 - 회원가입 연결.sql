SELECT * FROM member ORDER BY mem_no

로그인? 회원가입? 뭐가 먼저? >>>>> 당근빠따 회원가입

회원가입 시 아이디 중복검사에 대한 쿼리문을 작성해보시오

SELECT mem_no, mem_id, mem_name, DECODE('id', mem_id, '중복입니다.', '사용할 수 있는 아이디입니다.')
  FROM member
 ORDER BY mem_no
 
 
SELECT COUNT(mem_id)
  FROM member
 WHERE mem_id=:x
 
SELECT 1 FROM member
 WHERE mem_id='mango'

서브쿼리는 WHERE절 아래 SELECT문을 말한다.


SELECT 1
  FROM dual
 WHERE EXISTS (SELECT mem_name 
                 FROM member
                WHERE mem_id='apple')
                


SELECT 1
  FROM dual
 WHERE EXISTS (SELECT mem_name 
                 FROM member
                WHERE mem_id= 'apple5')
                
                
                
SELECT NVL((
            SELECT 1
              FROM dual
             WHERE EXISTS (SELECT mem_name 
                             FROM member
                            WHERE mem_id=:x) 
            ), 0) as "있나요? (0: 없어요, 1: 있어요)"
  FROM dual            
                
              
NVL을 이용해서 apple이 아닐 때 다른 값이 출력되게 쿼리문 작성하기.
 
 
인라인뷰는 FROM절 아래 SELECT문을 말함