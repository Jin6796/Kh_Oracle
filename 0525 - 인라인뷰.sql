SELECT * FROM t_giftmem

SELECT * FROM t_giftpoint

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
��ȭ Ƽ���� ���� �� �ִ� ����� ��ܰ� ���� ������ �ִ� ����Ʈ, ��ȭ Ƽ���� ����Ʈ            
�׸��� �� Ƽ���� ����� �� ���� ���� ����Ʈ�� ����Ͻÿ�. 

SELECT mem.name_vc as �̸�, mem.point_nu as ����, '15000' as ����,(mem.point_nu - 15000)as ��������
FROM t_giftmem mem, t_giftpoint point
WHERE mem.point_nu >=15000 
GROUP BY mem.name_vc, mem.point_nu ,(mem.point_nu - 15000)


SELECT mem.name_vc as �̸�, mem.point_nu as ����, '15000' as ����,(mem.point_nu - 15000)as ��������
FROM t_giftmem mem, t_giftpoint point
WHERE mem.point_nu >=15000 --AND point.giftid_vc ='A0002'
GROUP BY mem.name_vc, mem.point_nu 

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�

SELECT mem.name_vc as �̸�
     , mem.point_nu as ��������Ʈ
     , point.point_nu as ��������Ʈ
     , ((mem.point_nu)-15000) as �ܿ�����Ʈ
  FROM t_giftmem mem, t_giftpoint point
 WHERE mem.point_nu >= point.point_nu 
   AND point.giftid_vc = 'A0002'

   

SELECT mem.name_vc as �̸�
     , mem.point_nu as ��������Ʈ
     , point.point_nu as ��������Ʈ
     , ((mem.point_nu)-(point.point_nu)) as �ܿ�����Ʈ
  FROM t_giftmem mem, t_giftpoint point
      (SELECT point_nu
         FROM t_giftpoint
        WHERE name_vc - '��ȭƼ��')
 WHERE mem.point_nu >= point.point_nu 


SELECT mem.name_vc as �̸�
     , mem.point_nu as ��������Ʈ
     , point.point_nu as ��������Ʈ
     , ((mem.point_nu)-(point.point_nu)) as �ܿ�����Ʈ
  FROM t_giftmem mem, t_giftpoint point
 WHERE mem.point_nu >= point.point_nu 
   AND point.name_vc = '��ȭƼ��'


SELECT mem.name_vc as �̸�
     , mem.point_nu as ��������Ʈ
     , point.point_nu as ��������Ʈ
     , ((mem.point_nu)-(point.point_nu)) as �ܿ�����Ʈ
  FROM t_giftmem mem, t_giftpoint point
 WHERE mem.point_nu >= point.point_nu 
   AND point.name_vc =:x


SELECT mem.name_vc as �̸�
     , mem.point_nu as ��������Ʈ
     , point.point_nu as ��������Ʈ
     , ((mem.point_nu)-(point.point_nu)) as �ܿ�����Ʈ
  FROM t_giftmem mem,
      (SELECT point_nu
         FROM t_giftpoint
        WHERE name_vc = '��ȭƼ��')point
 WHERE mem.point_nu >= point.point_nu  
 
      
 
 �ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
 �����ž��� �����ϰ� �ִ� ���ϸ��� ����Ʈ�� ���� �� �ִ� ��ǰ �� ���� ����Ʈ�� ���� ���� �����ΰ�? (max, group by)

SELECT * FROM t_giftmem

SELECT * FROM t_giftpoint

--SELECT max(point_nu), min(name_vc)
--  FROM t_giftpoint
-- WHERE point_nu <= (
--                    SELECT point_nu
--                      FROM t_giftmem
--                     WHERE name_vc = '������'
--                     )




