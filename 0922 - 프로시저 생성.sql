CREATE OR REPLACE PROCEDURE proc_boardinsert(pbm_no IN number, pbm_title IN varchar
,pbm_writer IN varchar, pbm_content IN varchar, pbm_pw IN varchar
,pbm_group IN number, pbm_pos IN number, pbm_step IN number, result OUT number)
IS
BEGIN
        INSERT INTO board_master_T (b_no, b_title, b_writer, b_content, b_pw, b_group, b_pos, b_step , b_date)
        VALUES(pbm_no, pbm_title, pbm_writer, pbm_content, pbm_pw
               ,pbm_group, pbm_pos, pbm_step, to_char(sysdate, 'YYYY-MM-DD'));
        commit;
        result :=1;
END;