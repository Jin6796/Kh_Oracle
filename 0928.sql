SELECT fn_choseong('��')  --��
      ,fn_choseong('�ڼ�') -- ����
      ,fn_choseong('�ڼ��̺�') --��������
  FROM dual
  
  
SELECT �Լ���(��) FROM dual

--�Լ��� �÷����� ���� �ڸ��� �� �� �ִ�!

SELECT * FROM book
 WHERE fn_choseong(bk_title) LIKE '��'||'%'
 
-- �ʼ� ���� üũ�� ���? ���? ����?
-- �Է¹��� �������� ��ȿ�� �˻絵 �ڹٽ�ũ��Ʈ�� �ؾ��Ѵ�.
-- ����Ʈ����! ���? �ʼ������� ����ϴ� ������ �ڹ� ��ũ��Ʈ��!

SELECT fn_choseong(bk_title), bk_title
  FROM book