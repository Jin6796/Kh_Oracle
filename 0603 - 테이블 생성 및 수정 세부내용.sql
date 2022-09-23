CREATE TABLE SAM_TAB02 (GUBUN VARCHAR2(5) );  
-- DDL: 테이블 이름-샘플테이블?, 컬럼-타입은 VARCHAR2로 딱 한 개~~

DECLARE
SU NUMBER;
BEGIN
SU:=106;
LOOP
SU:=SU+1;
EXIT WHEN SU>125;
-- PL/SQL - 저장 프로시저(stored procedure) 생성 syntax - 익명 프로시저
-- DECLARE + 변수 선언(su:변수이름, number:타입) + BEGIN
-- BEGIN + 실행문 + END
-- 53번라인: 변수의 초기화. 초기값 106으로 설정.
-- LOOP: 반복문 > 어? 조건이 없네? (DO WHILE과 비슷 - 무조건 한 번은 진행!) > 무한루프 조심하자
-- EXIT: 무한루프에 대한 방지코드 (BREAK;랑 비슷)


INSERT INTO SAM_TAB02
VALUES('F'||TO_CHAR(SU));
END LOOP;
COMMIT;
END;
-- INSERT 문: 삽입, 입력, 추가 -- loop문이 끝나기 전까지 계속 실행.
-- all record, one commit