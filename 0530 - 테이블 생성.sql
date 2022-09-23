CREATE TABLE test1(
t_id varchar2(10) constraints  test1_pk primary key
,t_pw varchar2(10) not null)  

-- sqlplus jin/jin1234@192.168.140.43:1521/orcl11


SELECT * FROM test1

ALTER TABLE sample.test1
ADD (t_email varchar2(30));

ALTER TABLE sample.test1
ADD (t_jumin VARCHAR2(20));

INSERT INTO test1(t_id, t_pw, t_email, t_jumin)
            VALUES ('tomato', '123', 'nice_test@hot.com', '991225-2123456')

INSERT INTO test1(t_id, t_pw, t_email, t_jumin)
            VALUES ('peach', '124', 'bad_test@hot.com', '950730-1552729')

INSERT INTO test1(t_id, t_pw, t_email, t_jumin)
            VALUES ('watermelon', '125', 'joo_test@hot.com', '930501-1123456')
            
            
SELECT * FROM test1

SELECT * FROM test1
 WHERE t_email LIKE '___@_%' ESCAPE'@'
 
SELECT * FROM test1
 WHERE t_jumin LIKE '_______2%'
 
SELECT * FROM test1
 WHERE SUBSTR(t_jumin,8,1)=1
 
SELECT * FROM test1
 WHERE SUBSTR(t_jumin,8,2)=11
 
UPDATE test1
   SET t_pw = '125' -- 조건이 없기 때문에 테이블에 있는 모든 로우의 pw가 125로 바뀌게 된다
   
UPDATE test1
   SET t_pw = '126'
 WHERE t_id =:x     -- 변수 사용!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
rollback;

UPDATE test1
   SET t_pw2 = '125'
   
SELECT length('125'), length('hello'), length('자바의정석') 
     , lengthb('자바의정석')
FROM dual

SELECT length(t_pw), length(t_pw2)
FROM test1

SELECT 1
  FROM test1
 WHERE t_pw = t_pw2
 
 SELECT 1
  FROM test1
 WHERE t_pw != t_pw2  -- <> 같지 않다.