누가 언제 어떤 비디오를 대여했는지 알고싶다. 
만일 미반납 상태이면 전화를 걸어 반납을 요청해야한다고 한다면 어떤 집합들이 필요할까?

SELECT * FROM  hd_video_loan_mast_t --(대여일, 멤버id) loan_date, mem_cd

SELECT * FROM  hd_video_loan_detail_t --(반납일, 비디오 코드) return_date, video_cd 

SELECT * FROM hd_video_t -- (영화 코드) movie_cd

SELECT * FROM hd_movie_t -- (영화 이름) movie_name

SELECT * FROM  hd_video_member_t --(회원 연락처) mem_name, mem_tel

SELECT  
  FROM (SELECT loan_date, mem_cd FROM hd_video_loan_mast_t


SELECT return_date
  FROM (SELECT video_cd, return_date FROM hd_video_loan_detail_t)a, (SELECT video_cd FORM hd_video_t)b
WHERE a.video_cd = b.video_cd


카타시안의 곱, CROSS JOIN의 경우 일어날 수 있는 모든 경우의 수가 나온다. - 108건
108건 안에는 실제로 진행된 대여건만 들어있는 게 아니니 어떻게 해야 실제 발생한 대여건만 볼 수 있을 지 생각해보자.

SELECT mem_cd as 회원코드, loan_date as 대여일, return_date as 반납일
FROM hd_video_loan_mast_t vm, hd_video_loan_detail_t vd
WHERE vm.loan_no = vd.loan_no

DECODE((return_date-loan_date),1, 0, 2, 2500, 3, 5000, 4, 7500, '연체확인')

SELECT mem_cd as 회원코드, loan_date as 대여일, return_date as 반납일, 
       DECODE((return_date-loan_date),0,0,1, 0, 2, 2500, 3, 5000, 4, 7500, null)||'원'  as 연체료
FROM hd_video_loan_mast_t vm, hd_video_loan_detail_t vd
WHERE vm.loan_no = vd.loan_no


SELECT * 
  FROM hd_video_loan_mast_t vlm,
       hd_video_loan_detail_t vld,
       hd_video_member_t vm
       

SELECT mem_name 회원이름, mem_tel 연락처, loan_date 대여일  
  FROM hd_video_loan_mast_t vlm,
       hd_video_loan_detail_t vld,
       hd_video_member_t vm
 WHERE vlm.loan_no=vld.loan_no AND vm.mem_cd=vlm.mem_cd
 


SELECT vlm.loan_no 대여번호, loan_date 대여일, mem_name 회원이름, mem_tel 연락처, movie_name 영화제목, manager  
  FROM hd_video_loan_mast_t vlm,
       hd_video_loan_detail_t vld,
       hd_video_member_t vm,
       hd_video_t v , hd_movie_t m
 WHERE vlm.loan_no=vld.loan_no 
   AND vm.mem_cd=vlm.mem_cd 
   AND v.movie_cd=m.movie_cd
   AND v.video_cd=vld.video_cd

ORDER BY 대여번호 
 
 
누가 언제 어떤 비디오를 대여했는지 알고싶다. 
만일 미반납 상태이면 전화를 걸어 반납을 요청해야한다고 한다면 어떤 집합들이 필요할까?

SELECT * FROM hd_video_t, hd_movie_t

SELECT movie_name 
  FROM hd_video_t v , hd_movie_t m, hd_video_loan_detail_t vld
 WHERE v.movie_cd = m.movie_cd and vld.video_cd = v.video_cd 