SELECT seq_memo_no.nextval from dual

-- �� ����� �α��� ó���� �������迡 �ִ�.
-- ���� MemoController�� MemoLogic�� ������ �ʿ䰡 ����!
-- to_id�� ��� ��� ��������? >> MemberController
SELECT count(*)
  FROM memo
 WHERE to_id=:to_id AND read_yn='N'
 
select * from memo

SELECT count(*), count(comm) FROM emp

SELECT no, from_id, to_id, memo_content, create_date, read_yn
  FROM memo
 WHERE no =: no
 
UPDATE memo
   SET read_yn = 'Y'
 WHERE no =: no