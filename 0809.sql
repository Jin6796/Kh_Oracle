INSERT INTO board_master_T (b_no, b_title, b_writer, b_content, b_pw, b_group,
b_pos, b_step, b_date)
VALUES(seq_board_no.nextval, '1', '1', '1', '1', 0, 0, 0, to_char(sysdate, 'YYYY-MM-DD'))


SELECT seq_board_no.nextval FROM dual

SELECT * FROM BOARD_MASTER_T 

DDL문 index 인덱스 이름 on 테이블명(컬럼명)

create index i_bgroup on board_master_t(b_group)

SELECT /*+index_desc(board_master_t i_bgroup)*/ b_group
FROM board_master_t
WHERE b_group>0

SELECT NVL((SELECT /*+index_desc(board_master_t BOARD_MASTER_NO_PK)*/ b_group
              FROM board_master_t 
             WHERE rownum = 1),0)+1 b_group
  FROM dual
  
SELECT bm.b_no, bm.b_title, bm.b_writer, bs.bs_file, bm.b_hit,
       bm.b_content, bm.b_Date, bm.b_group, bm.b_pos, bm.b_step
  FROM board_master_t bm LEFT OUTER JOIN board_sub_t bs
    ON bm.b_no = bs.b_no
    
    
DELETE FROM board_master_t

DELETE FROM board_sub_t

commit;

        SELECT NVL((SELECT /*+index_desc(board_master_t BOARD_MASTER_NO_PK)*/ b_no
                      FROM board_master_t 
                     WHERE rownum = 1),0)+1 b_no
          FROM dual