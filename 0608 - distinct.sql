SELECT * FROM ZIPCODE_T

SELECT *
  FROM zipcode_t
 WHERE address LIKE '%����%'
 
 
SELECT *
  FROM zipcode_t
 WHERE address LIKE '%���ı� ����2��%'
 
SELECT *
  FROM ZIPCODE_T
 WHERE address LIKE '%���%'
 
��з� - �� �� ������ ��ȸ�ϼ���. �ߺ�����(distinct)

SELECT zdo
  FROM zipcode_t
 GROUP BY zdo
 
SELECT distinct zdo
  FROM zipcode_t
 ORDER BY zdo
 
SELECT distinct sigu
  FROM zipcode_t
 WHERE zdo = '����'
 ORDER BY sigu
 
 
SELECT '��ü' zdo FROM dual
UNION ALL
SELECT distinct zdo
  FROM zipcode_t
ORDER BY zdo


SELECT '��ü' zdo FROM dual
UNION ALL
SELECT zdo
  FROM (SELECT distinct zdo
          FROM zipcode_t
        ORDER BY zdo)
        
        
SELECT * FROM ZIPCODE_T WHERE aptname like '%�缭��%'

SELECT '��ü' zdo FROM dual
UNION ALL
SELECT sigu
  FROM (SELECT distinct sigu
          FROM zipcode_t
         WHERE
        )
        
        
        
SELECT '��ü' sigu FROM dual  
UNION ALL      
SELECT sigu
  FROM (SELECT distinct sigu FROM zipcode_t
         WHERE zdo =:x
        ORDER BY sigu)
        

SELECT '��ü' dong FROM dual  
UNION ALL      
SELECT dong
  FROM (SELECT distinct dong FROM zipcode_t
         WHERE sigu =:x
        ORDER BY dong)

SELECT '��ü' sigu FROM dual  
UNION ALL      
SELECT sigu
  FROM (SELECT distinct sigu 
          FROM (SELECT dong
                  FROM (SELECT distinct dong FROM zipcode_t
                WHERE sigu =:y
                ORDER BY dong))
          WHERE zdo =:x
         ORDER BY sigu)
         
         
SELECT '��ü' sigu FROM dual  
UNION ALL 
SELECT dong
  FROM (SELECT distinct sigu, dong FROM zipcode_t
         WHERE zdo =:x and sigu=:y
        ORDER BY sigu, dong)         
        
        
        
        
SELECT distinct sigu 
  FROM (SELECT dong
          FROM (SELECT distinct dong FROM zipcode_t
                WHERE sigu =:y
                ORDER BY dong))
         WHERE zdo =:x
         ORDER BY sigu       