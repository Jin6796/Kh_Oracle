SELECT * FROM t_letitbe

天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天
-- 艙橫陛餌 鉻嬴頂晦

SELECT words_vc
FROM t_letitbe
WHERE(MOD (seq_vc,2))!=0

SELECT
       DECODE(MOD(seq_vc,2),1,words_vc)
FROM t_letitbe 

天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天
-- и旋陛餌 鉻嬴頂晦

SELECT  words_vc
FROM t_letitbe
WHERE(MOD (seq_vc,2))=0

SELECT
       DECODE(MOD(seq_vc,2),0,words_vc)
FROM t_letitbe       

天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天
-- 艙橫+и旋


SELECT seq_vc, min(興)
  FROM(
       SELECT seq_vc, DECODE(MOD(seq_vc,2),1,words_vc) 興
       FROM t_letitbe
    UNION ALL
       SELECT seq_vc, DECODE(MOD(seq_vc,2),0,words_vc) 興
       FROM t_letitbe
       )
GROUP BY seq_vc
ORDER BY TO_NUMBER(seq_vc)

天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天

SELECT seq_vc, words_vc
FROM (SELECT *
        FROM t_letitbe) 
WHERE MOD (seq_vc,2)=0
--ORDER BY to_number(seq_vc)
UNION ALL
SELECT seq_vc, words_vc
FROM (SELECT *
        FROM t_letitbe) 
WHERE MOD (seq_vc,2)=1
ORDER BY (to_number(seq_vc))






SELECT seq_vc, words_vc
FROM (SELECT *
        FROM t_letitbe) 
WHERE MOD((to_number(seq_vc)),2)=0
GROUP BY seq_vc, words_vc
ORDER BY to_number(seq_vc)
UNION
SELECT seq_vc, words_vc
FROM (SELECT *
        FROM t_letitbe) 
WHERE MOD((to_number(seq_vc)),2)=1
GROUP BY seq_vc, words_vc
ORDER BY to_number(seq_vc)



天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天天

SELECT words_vc
FROM t_letitbe
WHERE(MOD (seq_vc,2))!=0
UNION ALL
SELECT  words_vc
FROM t_letitbe
WHERE(MOD (seq_vc,2))=0


SELECT seq_vc, word_vc
  FROM(SELECT
            MOD(seq_vc, 2)no
            ,DECODE(MOD(seq_vc,2),1,words_vc) eng_words)
  FROM t_letitbe


SELECT seq_vc
FROM t_letitbe


SELECT
DECODE(MOD(2,2),1,'�汝�',0,'礎熱', NULL)
FROM dual

SELECT
       MOD(seq_vc,2) n
  FROM t_letitbe

IF 2%2=0 THEN
  return '礎熱'
ELSEIF 2%2=1 THEN
  return '�汝�'
END;