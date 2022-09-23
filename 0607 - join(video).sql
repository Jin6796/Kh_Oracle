���� ���� � ������ �뿩�ߴ��� �˰�ʹ�. 
���� �̹ݳ� �����̸� ��ȭ�� �ɾ� �ݳ��� ��û�ؾ��Ѵٰ� �Ѵٸ� � ���յ��� �ʿ��ұ�?

SELECT * FROM  hd_video_loan_mast_t --(�뿩��, ���id) loan_date, mem_cd

SELECT * FROM  hd_video_loan_detail_t --(�ݳ���, ���� �ڵ�) return_date, video_cd 

SELECT * FROM hd_video_t -- (��ȭ �ڵ�) movie_cd

SELECT * FROM hd_movie_t -- (��ȭ �̸�) movie_name

SELECT * FROM  hd_video_member_t --(ȸ�� ����ó) mem_name, mem_tel

SELECT  
  FROM (SELECT loan_date, mem_cd FROM hd_video_loan_mast_t


SELECT return_date
  FROM (SELECT video_cd, return_date FROM hd_video_loan_detail_t)a, (SELECT video_cd FORM hd_video_t)b
WHERE a.video_cd = b.video_cd


īŸ�þ��� ��, CROSS JOIN�� ��� �Ͼ �� �ִ� ��� ����� ���� ���´�. - 108��
108�� �ȿ��� ������ ����� �뿩�Ǹ� ����ִ� �� �ƴϴ� ��� �ؾ� ���� �߻��� �뿩�Ǹ� �� �� ���� �� �����غ���.

SELECT mem_cd as ȸ���ڵ�, loan_date as �뿩��, return_date as �ݳ���
FROM hd_video_loan_mast_t vm, hd_video_loan_detail_t vd
WHERE vm.loan_no = vd.loan_no

DECODE((return_date-loan_date),1, 0, 2, 2500, 3, 5000, 4, 7500, '��üȮ��')

SELECT mem_cd as ȸ���ڵ�, loan_date as �뿩��, return_date as �ݳ���, 
       DECODE((return_date-loan_date),0,0,1, 0, 2, 2500, 3, 5000, 4, 7500, null)||'��'  as ��ü��
FROM hd_video_loan_mast_t vm, hd_video_loan_detail_t vd
WHERE vm.loan_no = vd.loan_no


SELECT * 
  FROM hd_video_loan_mast_t vlm,
       hd_video_loan_detail_t vld,
       hd_video_member_t vm
       

SELECT mem_name ȸ���̸�, mem_tel ����ó, loan_date �뿩��  
  FROM hd_video_loan_mast_t vlm,
       hd_video_loan_detail_t vld,
       hd_video_member_t vm
 WHERE vlm.loan_no=vld.loan_no AND vm.mem_cd=vlm.mem_cd
 


SELECT vlm.loan_no �뿩��ȣ, loan_date �뿩��, mem_name ȸ���̸�, mem_tel ����ó, movie_name ��ȭ����, manager  
  FROM hd_video_loan_mast_t vlm,
       hd_video_loan_detail_t vld,
       hd_video_member_t vm,
       hd_video_t v , hd_movie_t m
 WHERE vlm.loan_no=vld.loan_no 
   AND vm.mem_cd=vlm.mem_cd 
   AND v.movie_cd=m.movie_cd
   AND v.video_cd=vld.video_cd

ORDER BY �뿩��ȣ 
 
 
���� ���� � ������ �뿩�ߴ��� �˰�ʹ�. 
���� �̹ݳ� �����̸� ��ȭ�� �ɾ� �ݳ��� ��û�ؾ��Ѵٰ� �Ѵٸ� � ���յ��� �ʿ��ұ�?

SELECT * FROM hd_video_t, hd_movie_t

SELECT movie_name 
  FROM hd_video_t v , hd_movie_t m, hd_video_loan_detail_t vld
 WHERE v.movie_cd = m.movie_cd and vld.video_cd = v.video_cd 