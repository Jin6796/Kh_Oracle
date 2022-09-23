SELECT * FROM t_letitbe

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
-- ����� �̾Ƴ���

SELECT words_vc
FROM t_letitbe
WHERE(MOD (seq_vc,2))!=0

SELECT
       DECODE(MOD(seq_vc,2),1,words_vc)
FROM t_letitbe 

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
-- �ѱ۰��� �̾Ƴ���

SELECT  words_vc
FROM t_letitbe
WHERE(MOD (seq_vc,2))=0

SELECT
       DECODE(MOD(seq_vc,2),0,words_vc)
FROM t_letitbe       

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�
-- ����+�ѱ�


SELECT seq_vc, min(��)
  FROM(
       SELECT seq_vc, DECODE(MOD(seq_vc,2),1,words_vc) ��
       FROM t_letitbe
    UNION ALL
       SELECT seq_vc, DECODE(MOD(seq_vc,2),0,words_vc) ��
       FROM t_letitbe
       )
GROUP BY seq_vc
ORDER BY TO_NUMBER(seq_vc)

�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�

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



�ѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤѤ�

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
DECODE(MOD(2,2),1,'Ȧ��',0,'¦��', NULL)
FROM dual

SELECT
       MOD(seq_vc,2) n
  FROM t_letitbe

IF 2%2=0 THEN
  return '¦��'
ELSEIF 2%2=1 THEN
  return 'Ȧ��'
END;