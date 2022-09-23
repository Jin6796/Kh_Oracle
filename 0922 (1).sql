variable result number;
exec proc_boardinsert(100,'제목','작성자','내용','1',5,0,0,:result);
print result;