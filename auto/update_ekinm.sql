REM
REM =head1 NAME 
REM
REM update_ekinm.sql
REM
REM =head1 DESCRIPTION
REM 
REM �A�p�}�����񂩂�񋟂����w���͌��R�[�h��H�������iXXX)�Œ񋟂����̂�
REM �Y�������폜����
REM
REM ��F�@��{(��ʌ�) �|�� ��{
REM
REM =head1 HISTORY
REM
REM =over 4
REM
REM =item 2010/10/25 M.TAKIUCHI CREATED
REM
REM =item 2010/10/25 M.TAKIUCHI COMMENT ADD FOR POD
REM
REM =back
REM
REM =head1 Trouble Shooting
REM
REM ���x���s���Ă��������ʂɂȂ�B
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
update ts_heya_tinryo_his_sum set eki_nm1= substrb(eki_nm1,0,instrb(eki_nm1,'(') - 1)
where eki_nm1 like '%(%'
/
update ts_heya_tinryo_his_sum set eki_nm2= substrb(eki_nm2,0,instrb(eki_nm2,'(') - 1)
where eki_nm2 like '%(%'
/
update ts_heya_tinryo_his_sum set eki_nm3= substrb(eki_nm3,0,instrb(eki_nm3,'(') - 1)
where eki_nm3 like '%(%'
/
commit
/
REM
update ts_tatemono_dtl set eki_nm1= substrb(eki_nm1,0,instrb(eki_nm1,'(') - 1)
where eki_nm1 like '%(%'
/
update ts_tatemono_dtl set eki_nm2= substrb(eki_nm2,0,instrb(eki_nm2,'(') - 1)
where eki_nm2 like '%(%'
/
update ts_tatemono_dtl set eki_nm3= substrb(eki_nm3,0,instrb(eki_nm3,'(') - 1)
where eki_nm3 like '%(%'
/
update ts_kusituritu_eki set ekinm=substrb(ekinm,0,instrb(ekinm,'(') - 1)
where ekinm like '%(%'
/
commit
/
update ts_tatemono_dtl set eki_nm1=to_single_byte(eki_nm1)
/
commit
/
update ts_tatemono_dtl set eki_nm2=to_single_byte(eki_nm2)
/
commit
/
update ts_tatemono_dtl set eki_nm3=to_single_byte(eki_nm3)
/
commit
/
update ts_kusituritu_eki set ekinm=to_single_byte(ekinm)
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'�P','��')
where eki_cd1 in (select eki_cd1 from ts_tatemono_dtl where eki_nm1 like '%�P%')
/
commit
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'�P','��')
where eki_cd2 in (select eki_cd2 from ts_tatemono_dtl where eki_nm2 like '%�P%')
/
commit
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'�P','��')
where eki_cd3 in (select eki_cd3 from ts_tatemono_dtl where eki_nm3 like '%�P%')
/
commit
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'�P','��')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '%�P%')
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'�E')
where eki_nm1 like '�����f�B�Y�j�[�����h�E�X�e�[�V����'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'�E')
where eki_nm2 like '�����f�B�Y�j�[�����h�E�X�e�[�V����'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'�E')
where eki_nm3 like '�����f�B�Y�j�[�����h�E�X�e�[�V����'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'�E')
where ekinm like '�����f�B�Y�j�[�����h�E�X�e�[�V����'
/
commit
/
REM
REM KOBETU TAIOU
REM
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'�O�c��','�O�b��')
where eki_nm1 like '�O�c��'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'�O�c��','�O�b��')
where eki_nm2 like '�O�c��'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'�O�c��','�O�b��')
where eki_nm3 like '�O�c��'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'�O�c��','�O�b��')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '�O�c��')
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'�O�c��','�O�b��')
where eki_nm1 like '�O�c��%'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'�O�c��','�O�b��')
where eki_nm2 like '�O�c��%'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'�O�c��','�O�b��')
where eki_nm3 like '�O�c��%'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'�O�c��','�O�b��')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '�O�c��%')
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'�����J','���P�J')
where eki_nm1 like '%�����J'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'�����J','���P�J')
where eki_nm2 like '%�����J'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'�����J','���P�J')
where eki_nm3 like '%�����J'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'�����J','���P�J')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '%�����J')
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'�������l����','���P���l����')
where eki_nm1 like '�������l����'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'�������l����','���P���l����')
where eki_nm2 like '�������l����'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'�������l����','���P���l����')
where eki_nm3 like '�������l����'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'�������l����','���P���l����')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '�������l����')
/
commit
/
