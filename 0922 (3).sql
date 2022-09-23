CREATE OR REPLACE PROCEDURE SCOTT.proc_zipcode(keyword In varchar, rc_zipcode OUT sys_refcursor)
    IS
    BEGIN
        OPEN rc_zipcode
        FOR SELECT zipcode, address FROM zipcode_t
             WHERE dong LIKE keyword||'%';
    END;