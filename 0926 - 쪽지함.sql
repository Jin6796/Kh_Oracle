select * from memo

select * from member


edit memo

delete from memo where no = 1

-- ���� ������
SELECT no, memo_content "����", mem_name "���� ���", from_id "���� ���", to_id,
       create_date "��¥", DECODE(read_yn, 'Y', '����', 'N', '���� ����') as read_yn
  FROM member, memo
 WHERE mem_id = from_id
   AND to_id = 'tomato'
 
-- ���� ������
SELECT no, memo_content "����", mem_name "�޴� ���", to_id "�޴� ���", from_id,
       create_date "��¥", DECODE(read_yn, 'Y', '����', 'N', '���� ����') as read_yn
  FROM member, memo
 WHERE mem_id = to_id 
   AND from_id = 'tomato'
   
-- tomato�� ���� ���� ���� ��
SELECT count(*)
  FROM memo
 WHERE to_id='tomato'
  AND read_yn='N'
