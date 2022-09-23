SELECT mem_name FROM member
 WHERE mem_id = 'tomato'
   AND mem_pw = '123'

SELECT mem_name FROM member
 WHERE mem_id = 'tomato222'
   AND mem_pw = '123'

SELECT mem_name FROM member
 WHERE mem_id = 'tomato'
   AND mem_pw = '12345'

SELECT * FROM member

SELECT * FROM board

SELECT * FROM khboard

edit board

edit khboard

update khboard set title= '제목13', content= '내용13'
where id = 1
