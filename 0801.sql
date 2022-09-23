SELECT * 
FROM board_master_T

SELECT * 
FROM board_sub_T

edit board_master_T

SELECT bm.b_no, bm.b_title, bm.b_writer, NVL(bs.bs_file, '¾øÀ½'), bm.b_hit
 FROM board_master_t bm LEFT OUTER JOIN board_sub_t bs
    ON bm.b_no = bs.b_no
ORDER BY bm.b_group desc, b_step asc

commit;