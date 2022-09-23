variable rc_zipcode refcursor;
exec proc_zipcode('πÊ¿Ã', :rc_zipcode);
print rc_zipcode;