variable rc_zipcode refcursor;
exec proc_zipcode('����', :rc_zipcode);
print rc_zipcode;