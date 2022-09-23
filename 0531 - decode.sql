SELECT * FROM lecture

SELECT * FROM emp

SELECT deptno, SUM(sal)
  FROM emp
 GROUP BY deptno

SELECT deptno, SUM(sal), AVG(sal)
  FROM emp
 GROUP BY deptno
 
SELECT deptno, SUM(sal), AVG(sal)
  FROM emp
 GROUP BY deptno
HAVING AVG(sal)>=2000

SELECT DECODE(1,2,'참','거짓')
  FROM dual
  
SELECT DECODE(1,1,'참','거짓')
  FROM dual
  
SELECT DECODE(5,1,'A',2,'B',3,'C','D')
  FROM dual
  
IF     5 = 1 THEN return 'A'
ELSEIF 5 = 2 THEN return 'B'
ELSEIF 5 = 3 THEN return 'C'
ELSE              return 'D'

SELECT * FROM lecture  

--lec time:강의 시간, lec point:학점

SELECT * FROM lecture 

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제1: 주당 강의 시간과 학점이 같으면 '일반'을 돌려 받으려 한다. 어떻게 해야 하는가?

SELECT lec_time, lec_point, DECODE(lec_time, lec_point, '일반강좌', '기타강좌') as "일반/기타"
  FROM lecture
  
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제2: 주당강의시간과 학점이 같은 강의의 숫자(갯수)를 알고 싶다. 어떻게 해야 하는가?

SELECT ROWNUM, lec_time, lec_point, DECODE(lec_time, lec_point, lec_id) as 수강코드
  FROM lecture
  
  
SELECT COUNT(lec_id)
  FROM lecture
 WHERE lec_point = lec_time
 
SELECT DECODE(lec_time, lec_point, 'A'), DECODE(lec_time, lec_point, lec_id)
  FROM lecture
  
SELECT COUNT(DECODE(lec_time, lec_point, 'A')), DECODE(lec_time, lec_point, lec_id)
  FROM lecture

SELECT COUNT(DECODE(lec_time, lec_point, 'A')),
       COUNT(DECODE(lec_time, lec_point, lec_id)),
       MAX(DECODE(lec_time, lec_point, lec_id))
  FROM lecture

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제3: 강의 시간과 학점이 같으면 '일반'을 리턴받은 후 정렬도 하고 싶은 경우에는 어떻게 해야 하는가?

SELECT lec_time, lec_point, DECODE(lec_time, lec_point, '일반', null) as "일반/교양"
  FROM lecture
 ORDER BY DECODE(lec_time, lec_point, '일반', null)

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제4: 주당 강의 시간과 학점이 같으면 '일반', 다르면 '교양'을 리턴받은 후 정렬도 하고 싶은 경우에는 어떻게 해야하는가?

SELECT lec_time, lec_point, DECODE(lec_time, lec_point, '일반', '교양') as "일반/교양"
  FROM lecture
 ORDER BY DECODE(lec_time, lec_point, '일반', '교양') DESC

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제5: 강의 시간과 학점이 다르면 NULL이 리턴되는 대신 '특별'이라고 리턴되도록 하려면 어떻게 해야하는가?

SELECT lec_time, lec_point, DECODE(lec_time, lec_point, '일반', '특별') as "일반/특별"
  FROM lecture
 
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ  
문제6: lec_time이 크면 실험과목, lec_point가 크면 기타과목, 둘이 같으면 '일반과목'으로 돌려받고자 한다.

SELECT * 
  FROM lecture
   
SELECT SIGN(5), SIGN(-600), SIGN(10-50), SIGN(10-10) FROM dual

SELECT lec_id, lec_time, lec_point, SIGN(lec_time-lec_point)
  FROM lecture

두 수를 뺀 값이 양의 정수이면 앞에 숫자가 크다? 작다?


SELECT lec_id, lec_time 강의시간, lec_point 학점, 
       DECODE(SIGN(lec_time-lec_point), -1, '기타과목', 1, '실험과목', '일반과목') as 과목유형
  FROM lecture
  
ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제7: 월요일엔 해당일자에 01을 붙여서 4자리 암호를 만들고, 화요일엔 11, 수요일엔 21, 
      목요일엔, 31, 금요일엔 41, 토요일엔 51,일요일엔 61을 붙여서 4자리 암호를 만든다고 할 때 
      암호를 SELECT하는 SQL을 만들어 보시오. (문자열 결합: '31'||'11')
      
SELECT to_char(sysdate, 'mm') as 월,
       to_char(sysdate, 'dd') as 일,
       to_char(sysdate, 'day') as 요일,
      (DECODE((to_char(sysdate, 'day')), 
            '월요일', to_char(sysdate, 'dd')||'01', 
            '화요일', to_char(sysdate, 'dd')||'11', 
            '수요일', to_char(sysdate, 'dd')||'21',
            '목요일', to_char(sysdate, 'dd')||'31', 
            '금요일', to_char(sysdate, 'dd')||'41', 
            '토요일', to_char(sysdate, 'dd')||'51', 
            '일요일', to_char(sysdate, 'dd')||'61')) as 암호
  FROM dual
 

SELECT to_char(sysdate, 'mm') as 월,
       to_char(sysdate, 'dd') as 일,
       to_char(sysdate, 'day') as 요일,
       to_char(sysdate, 'dd')||(DECODE((to_char(sysdate, 'day')), '월요일', 01,
                                                                  '화요일', 11,
                                                                  '수요일', 21,
                                                                  '목요일', 31,
                                                                  '금요일', 41,
                                                                  '토요일', 51,
                                                                  '일요일', 61)) as 암호
  FROM dual
  

   
  
SELECT to_char(sysdate, 'mm') as 월,
       to_char(sysdate, 'dd') as 일,
       to_char(sysdate, 'day') as 요일,
      (DECODE(to_char(sysdate, 'day'), '화요일', to_char(sysdate, 'dd')||'11', 0)) as 암호
  FROM dual
  
  
  
SELECT to_char(sysdate, 'mm') as 월,
       to_char(sysdate, 'dd') as 일,
       to_char(sysdate, 'day') as 요일,
      (DECODE('dd', '30', 1111, '31', 2222, 0)) as 암호
  FROM dual
 

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
문제8: 사원 테이블에서 job이 'CLERK'인 사원의 급여 합, 'SALESMAN'인 사람의 급여의 합을 구하고
     나머지 job에 대해서는 기타의 합으로 구하시오.
     
SELECT * FROM emp


SELECT DECODE(job, 'CLERK', sal) as "CLERK 급여 합",
       DECODE(job, 'SALESMAN', sal) as "SALESMAN 급여 합",
       DECODE(job, 'CLERK', null, 'SALESMAN', null, sal) as "기타 부서 급여 합"
  FROM emp
  

SELECT SUM(DECODE(job, 'CLERK', sal)) as "CLERK 급여 합",
       SUM(DECODE(job, 'SALESMAN', sal)) as "SALESMAN 급여 합",
       SUM(DECODE(job, 'CLERK', null, 'SALESMAN', null, sal)) as "기타 부서 급여 합"
  FROM emp
  
  
