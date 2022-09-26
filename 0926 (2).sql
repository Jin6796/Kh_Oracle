INSERT INTO  memo(no, from_id, to_id, memo_content, create_date, read_yn)
VALUES (seq_memo_no.nextval,'apple','tomato','³»¿ë',to_char(sysdate,'YYYY-MM-DD'),'N')


commit;