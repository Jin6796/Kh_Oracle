SELECT * FROM board_master_t
WHERE b_group=1
ORDER BY b_group asc, b_step asc

DELETE FROM board_master_t

commit;

SELECT * FROM board_sub_t
