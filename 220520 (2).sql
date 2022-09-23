SELECT * FROM member

query/SQL문

id와 pw값을 올바르게 입력하면 이름을 출력하시오
--아이디와 비밀번호가 일치하는 경우에만 출력 결과를 볼 수 있다
--데이터를 추가한 뒤 commit을 하지 않으면 실제 DB table에 반영되지 않음
--  >> 자기 서버를 바라볼 때는 결과가 있는 것 처럼 보이지만 외부에서 접근하면 보이지 않는다.

SELECT mem_name
FROM member
WHERE mem_id =:id
AND mem_pw=:pw

DELETE 

INSERT INTO member(mem_no, mem_id, mem_pw, mem_name)
VALUES(5,'nice', '123', '굿맨')

commit