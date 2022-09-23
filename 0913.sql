create table test(
test_no number(5) constraints test_no_pk primary key,
test_title varchar2(30),
test_content varchar2(4000)
)


edit test

select * from test

INSERT INTO test(test_no, test_title, test_content)
VALUES(50, '다중테스트 5', '멀티 추가 5' FROM dual) // 안되는 구문 맞음

edit dept