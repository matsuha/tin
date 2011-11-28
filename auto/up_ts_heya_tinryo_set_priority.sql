REM
REM =head1 NAME 
REM
REM up_ts_heya_tinryo_set_priority.sql
REM
REM =head1 DESCRIPTION
REM 
REM �����}�X�^(TS_HEYA_TINRYO)�̍ŗD��������̒i�K�ōX�V����
REM
REM �܂��ATS_HEYA_TINRYO��PRIORITY=0�ɂ��ď���������B
REM �ŗD����P��PRIORITY_SELECT=1�̃��R�[�h��PRIORITY=1
REM �ɍX�V����B
REM �����������}�X�^�iTS_TATEMONO �ɂ����f����B
REM TS_TATEMONO.PRIORITY=1�ɐݒ肷��B
REM (TS_TATEMNO.PRIORITY�����O�ɂO�ɏ���������j
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
REM
UPDATE TS_HEYA_TINRYO SET PRIORITY = 0
		where 
		kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
/
REM
REM �v���C�I���e�B�[��╨�����v���C�I���e�B�[�����Ƃ��čX�V����
REM
UPDATE TS_HEYA_TINRYO SET PRIORITY = 1
		where 
		kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
		AND priority_select = 1
/
REM
REM
UPDATE TS_TATEMONO SET PRIORITY = 0
WHERE PRIORITY = 1
/
UPDATE TS_HEYA SET PRIORITY = 0
WHERE PRIORITY = 1
/
REM
REM
UPDATE TS_TATEMONO SET PRIORITY = 1
		where 
		(tatemono_cd,toiawase_no) in (select tatemono_cd,toiawase_no from ts_heya_tinryo
		where priority = 1
		)
/
UPDATE TS_HEYA SET PRIORITY = 1
		where 
		(tatemono_cd,toiawase_no) in (select tatemono_cd,toiawase_no from ts_heya_tinryo
		where priority = 1
		)
/
