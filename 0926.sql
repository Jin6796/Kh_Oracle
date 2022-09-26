SELECT
    mem_no, mem_id, mem_pw, mem_name, mem_zipcode, mem_address
  FROM member
  
SELECT
    mem_no, mem_id, mem_pw, mem_name, mem_zipcode, mem_address,
    '<a href = javascript:memoForm()>'
  FROM member
 