SELECT * FROM member ORDER BY mem_no

�α���? ȸ������? ���� ����? >>>>> ��ٺ��� ȸ������

ȸ������ �� ���̵� �ߺ��˻翡 ���� �������� �ۼ��غ��ÿ�

SELECT mem_no, mem_id, mem_name, DECODE('id', mem_id, '�ߺ��Դϴ�.', '����� �� �ִ� ���̵��Դϴ�.')
  FROM member
 ORDER BY mem_no
 
 
SELECT COUNT(mem_id)
  FROM member
 WHERE mem_id=:x
 
SELECT 1 FROM member
 WHERE mem_id='mango'

���������� WHERE�� �Ʒ� SELECT���� ���Ѵ�.


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
            ), 0) as "�ֳ���? (0: �����, 1: �־��)"
  FROM dual            
                
              
NVL�� �̿��ؼ� apple�� �ƴ� �� �ٸ� ���� ��µǰ� ������ �ۼ��ϱ�.
 
 
�ζ��κ�� FROM�� �Ʒ� SELECT���� ����