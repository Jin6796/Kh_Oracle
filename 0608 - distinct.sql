SELECT * FROM ZIPCODE_T

SELECT *
  FROM zipcode_t
 WHERE address LIKE '%위례%'
 
 
SELECT *
  FROM zipcode_t
 WHERE address LIKE '%송파구 방이2동%'
 
SELECT *
  FROM ZIPCODE_T
 WHERE address LIKE '%당산%'
 
대분류 - 시 도 정보만 조회하세요. 중복제거(distinct)

SELECT zdo
  FROM zipcode_t
 GROUP BY zdo
 
SELECT distinct zdo
  FROM zipcode_t
 ORDER BY zdo
 
SELECT distinct sigu
  FROM zipcode_t
 WHERE zdo = '서울'
 ORDER BY sigu
 
 
SELECT '전체' zdo FROM dual
UNION ALL
SELECT distinct zdo
  FROM zipcode_t
ORDER BY zdo


SELECT '전체' zdo FROM dual
UNION ALL
SELECT zdo
  FROM (SELECT distinct zdo
          FROM zipcode_t
        ORDER BY zdo)
        
        
SELECT * FROM ZIPCODE_T WHERE aptname like '%사서함%'

SELECT '전체' zdo FROM dual
UNION ALL
SELECT sigu
  FROM (SELECT distinct sigu
          FROM zipcode_t
         WHERE
        )
        
        
        
SELECT '전체' sigu FROM dual  
UNION ALL      
SELECT sigu
  FROM (SELECT distinct sigu FROM zipcode_t
         WHERE zdo =:x
        ORDER BY sigu)
        

SELECT '전체' dong FROM dual  
UNION ALL      
SELECT dong
  FROM (SELECT distinct dong FROM zipcode_t
         WHERE sigu =:x
        ORDER BY dong)

SELECT '전체' sigu FROM dual  
UNION ALL      
SELECT sigu
  FROM (SELECT distinct sigu 
          FROM (SELECT dong
                  FROM (SELECT distinct dong FROM zipcode_t
                WHERE sigu =:y
                ORDER BY dong))
          WHERE zdo =:x
         ORDER BY sigu)
         
         
SELECT '전체' sigu FROM dual  
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