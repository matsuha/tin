REM
REM =head1 NAME 
REM
REM up_ju.sql
REM
REM =head1 DESCRIPTION
REM 
REM TS_HEYA_TINRYO_HIS_SUM��jushocd1-3 JUSHONM1-3���X�V����
REM
REM ���O��JU1-3���h�l�o�n�q�s���Ă����K�v������B
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
REM �ŐV�Z���f�[�^�𗘗p���ĉ��x���čX�V�\
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
spool up_ju.lst
set time on
set timing on
update
 	ts_heya_tinryo_his_sum aa
 set
 	(
 			JUSHO
 	) = (
		select replace(jusho_nm,trim(ju1.jushonm)||trim(ju2.jushonm2)) 
		from ts_tatemono_dtl,ju1,ju2,ts_tatemono
		where 
		ts_tatemono.jushocd1 = ju1.jushocd1
		and
		ju2.jushocd1 = ju1.jushocd1
		and
		ts_tatemono.jushocd2 = ju2.jushocd2
		and
		ts_tatemono.tatemono_cd = ts_tatemono_dtl.tatemono_cd
		and
		ts_tatemono.toiawase_no = ts_tatemono_dtl.toiawase_no
		and
		ts_tatemono.jushocd1 = aa.jushocd1
		and
		ts_tatemono.jushocd2 = aa.jushocd2
		and
		ts_tatemono.jushocd3 = aa.jushocd3
		and
		ts_tatemono.jushocd4 = aa.jushocd4
		and
		ju2.jushocd1 = aa.jushocd1
		and
		ju2.jushocd2 = aa.jushocd2
		and
		ju1.jushocd1 = aa.jushocd1
		and
		rownum = 1
 	)
/
