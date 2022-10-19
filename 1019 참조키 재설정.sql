select * from tb_point

-- point�� member ���̺� �������� ����

ALTER TABLE tb_member DROP CONSTRAINT FK_TB_POINT_TO_TB_MEMBER_1;

-- point ���̺� member_no �÷� �߰�, member ���̺� point_no �÷� ���� �Ŀ� 

ALTER TABLE tb_point ADD CONSTRAINT FK_tb_member_TO_tb_point_1 FOREIGN KEY (
    MEMBER_NO
)
REFERENCES tb_member (
    MEMBER_NO
);

-- �ٽ� ����Ű ���� ����