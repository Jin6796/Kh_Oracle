variable rc_Dept REFCURSOR;
exec proc_deptlist(20, :rc_dept);
print rc_dept