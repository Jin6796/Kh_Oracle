create table dept_copy as select * from dept

-- 데이터 복제 트리거 적용 여부 확인

insert into dept values(66,'전산과','서울', null, null);

select * from dept_copy;

select * from dept

update dept set loc = '대전' where deptno = 66;

delete from dept where deptno = 22;