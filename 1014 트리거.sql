create or replace trigger trg_dept_backup
after insert or update or delete on dept
for each row
begin
  if inserting then
     insert into dept_copy(deptno, dname, loc)
           values(:new.deptno, :new.dname, :new.loc);
  elsif updating then
     update dept_copy
        set dname = :new.dname, loc = :new.loc
      where dept_copy.deptno = :old.deptno;
  elsif deleting then
     delete from dept_copy
      where dept_copy.deptno = :old.deptno;
  end if;
end;  