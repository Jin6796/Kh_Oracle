SELECT * FROM member

query/SQL��

id�� pw���� �ùٸ��� �Է��ϸ� �̸��� ����Ͻÿ�
--���̵�� ��й�ȣ�� ��ġ�ϴ� ��쿡�� ��� ����� �� �� �ִ�
--�����͸� �߰��� �� commit�� ���� ������ ���� DB table�� �ݿ����� ����
--  >> �ڱ� ������ �ٶ� ���� ����� �ִ� �� ó�� �������� �ܺο��� �����ϸ� ������ �ʴ´�.

SELECT mem_name
FROM member
WHERE mem_id =:id
AND mem_pw=:pw

DELETE 

INSERT INTO member(mem_no, mem_id, mem_pw, mem_name)
VALUES(5,'nice', '123', '�¸�')

commit