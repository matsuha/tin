REM tatemono_syubetu_nm in ('
REM '�A�p�[�g', '�R�[�|', '�n�C�c'
REM '�}���V����'
REM '�^�E���n�E�X', '�e���X�n�E�X', '��ˌ���'
REM �X�ܕt�Z��
REM �݉�
REM ����
REM �}���V����
drop table ju1std
/
create table ju1std as
select jushocd1,jushocd2,tatemono_syubetu_nm,avg(tinryo/senyu_m2) m2tin, stddev(tinryo/senyu_m2) std, 
avg(tinryo/senyu_m2)+stddev(tinryo/senyu_m2)*3 out from apa0902
group by jushocd1,jushocd2,tatemono_syubetu_nm
/
