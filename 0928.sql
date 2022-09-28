SELECT fn_choseong('자')  --ㅈ
      ,fn_choseong('자석') -- ㅈㅅ
      ,fn_choseong('자석이불') --ㅈㅅㅇㅂ
  FROM dual
  
  
SELECT 함수명(값) FROM dual

--함수는 컬럼명이 오는 자리에 올 수 있다!

SELECT * FROM book
 WHERE fn_choseong(bk_title) LIKE 'ㅎ'||'%'
 
-- 초성 유무 체크는 어디서? 어떻게? 누가?
-- 입력받은 데이터의 유효성 검사도 자바스크립트로 해야한다.
-- 프론트에서! 어떻게? 초성인지를 계산하는 공식을 자바 스크립트가!

SELECT fn_choseong(bk_title), bk_title
  FROM book