SELECT * FROM t_giftmem

SELECT * FROM t_giftpoint

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
영화 티켓을 받을 수 있는 사람의 명단과 현재 가지고 있는 포인트, 영화 티켓의 포인트            
그리고 그 티켓을 사용한 후 남은 예상 포인트를 출력하시오. 

SELECT mem.name_vc as 이름, mem.point_nu as 보유, '15000' as 적용,(mem.point_nu - 15000)as 남은예상
FROM t_giftmem mem, t_giftpoint point
WHERE mem.point_nu >=15000 
GROUP BY mem.name_vc, mem.point_nu ,(mem.point_nu - 15000)


SELECT mem.name_vc as 이름, mem.point_nu as 보유, '15000' as 적용,(mem.point_nu - 15000)as 남은예상
FROM t_giftmem mem, t_giftpoint point
WHERE mem.point_nu >=15000 --AND point.giftid_vc ='A0002'
GROUP BY mem.name_vc, mem.point_nu 

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

SELECT mem.name_vc as 이름
     , mem.point_nu as 보유포인트
     , point.point_nu as 적용포인트
     , ((mem.point_nu)-15000) as 잔여포인트
  FROM t_giftmem mem, t_giftpoint point
 WHERE mem.point_nu >= point.point_nu 
   AND point.giftid_vc = 'A0002'

   

SELECT mem.name_vc as 이름
     , mem.point_nu as 보유포인트
     , point.point_nu as 적용포인트
     , ((mem.point_nu)-(point.point_nu)) as 잔여포인트
  FROM t_giftmem mem, t_giftpoint point
      (SELECT point_nu
         FROM t_giftpoint
        WHERE name_vc - '영화티켓')
 WHERE mem.point_nu >= point.point_nu 


SELECT mem.name_vc as 이름
     , mem.point_nu as 보유포인트
     , point.point_nu as 적용포인트
     , ((mem.point_nu)-(point.point_nu)) as 잔여포인트
  FROM t_giftmem mem, t_giftpoint point
 WHERE mem.point_nu >= point.point_nu 
   AND point.name_vc = '영화티켓'


SELECT mem.name_vc as 이름
     , mem.point_nu as 보유포인트
     , point.point_nu as 적용포인트
     , ((mem.point_nu)-(point.point_nu)) as 잔여포인트
  FROM t_giftmem mem, t_giftpoint point
 WHERE mem.point_nu >= point.point_nu 
   AND point.name_vc =:x


SELECT mem.name_vc as 이름
     , mem.point_nu as 보유포인트
     , point.point_nu as 적용포인트
     , ((mem.point_nu)-(point.point_nu)) as 잔여포인트
  FROM t_giftmem mem,
      (SELECT point_nu
         FROM t_giftpoint
        WHERE name_vc = '영화티켓')point
 WHERE mem.point_nu >= point.point_nu  
 
      
 
 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
 김유신씨가 보유하고 있는 마일리지 포인트로 얻을 수 있는 상품 중 가장 포인트가 높은 것은 무엇인가? (max, group by)

SELECT * FROM t_giftmem

SELECT * FROM t_giftpoint

--SELECT max(point_nu), min(name_vc)
--  FROM t_giftpoint
-- WHERE point_nu <= (
--                    SELECT point_nu
--                      FROM t_giftmem
--                     WHERE name_vc = '김유신'
--                     )




