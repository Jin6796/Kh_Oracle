select * from memo

select * from member


edit memo

-- ���� ������
SELECT memo_content "����", mem_name "���� ���", from_id "���� ���",
       create_date "��¥", DECODE(read_yn, 'Y', '����', 'N', '���� ����') as read_yn,
       (select count(*) from memo where read_yn = 'N') "������"
  FROM member, memo
 WHERE mem_id = from_id
   AND to_id = 'tomato'
 
-- ���� ������
SELECT memo_content "����", mem_name "�޴� ���", to_id "�޴� ���",
       create_date "��¥", DECODE(read_yn, 'Y', '����', 'N', '���� ����') as read_yn
  FROM member, memo
 WHERE mem_id = to_id 
   AND from_id = 'tomato'