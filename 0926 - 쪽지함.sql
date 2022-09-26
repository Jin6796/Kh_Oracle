select * from memo

select * from member


edit memo

-- 받은 쪽지함
SELECT memo_content "내용", mem_name "보낸 사람", from_id "보낸 사람",
       create_date "날짜", DECODE(read_yn, 'Y', '읽음', 'N', '읽지 않음') as read_yn,
       (select count(*) from memo where read_yn = 'N') "안읽음"
  FROM member, memo
 WHERE mem_id = from_id
   AND to_id = 'tomato'
 
-- 보낸 쪽지함
SELECT memo_content "내용", mem_name "받는 사람", to_id "받는 사람",
       create_date "날짜", DECODE(read_yn, 'Y', '읽음', 'N', '읽지 않음') as read_yn
  FROM member, memo
 WHERE mem_id = to_id 
   AND from_id = 'tomato'