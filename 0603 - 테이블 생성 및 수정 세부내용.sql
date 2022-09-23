CREATE TABLE SAM_TAB02 (GUBUN VARCHAR2(5) );  
-- DDL: ���̺� �̸�-�������̺�?, �÷�-Ÿ���� VARCHAR2�� �� �� ��~~

DECLARE
SU NUMBER;
BEGIN
SU:=106;
LOOP
SU:=SU+1;
EXIT WHEN SU>125;
-- PL/SQL - ���� ���ν���(stored procedure) ���� syntax - �͸� ���ν���
-- DECLARE + ���� ����(su:�����̸�, number:Ÿ��) + BEGIN
-- BEGIN + ���๮ + END
-- 53������: ������ �ʱ�ȭ. �ʱⰪ 106���� ����.
-- LOOP: �ݺ��� > ��? ������ ����? (DO WHILE�� ��� - ������ �� ���� ����!) > ���ѷ��� ��������
-- EXIT: ���ѷ����� ���� �����ڵ� (BREAK;�� ���)


INSERT INTO SAM_TAB02
VALUES('F'||TO_CHAR(SU));
END LOOP;
COMMIT;
END;
-- INSERT ��: ����, �Է�, �߰� -- loop���� ������ ������ ��� ����.
-- all record, one commit