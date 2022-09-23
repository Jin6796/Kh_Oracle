// 마이페이지에서 내 강좌 조회하기

SELECT r.c_date, r.c_name, r.c_time
  FROM reservation r, members m
 WHERE r.mb_uid = m.uid