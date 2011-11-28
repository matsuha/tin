REM
REM =head1 NAME 
REM
REM find_down_ts_heya_tinryo.sql
REM
REM =head1 DESCRIPTION
REM 
REM ���������}�X�^�iTS_HEYA_TINRYO)
REM
REM �O��̃f�[�^�񋟓��ɂ͊܂܂�Ă������A����̃f�[�^�ɂ͊܂܂�Ă��Ȃ�
REM ����(TETEMONO_CD)�{����(ROOMNO)�̏��̑O��f�[�^��
REM (�f�[�^�񋟏I�����jDOWN_YMD������̃f�[�^�񋟓��ōX�V���܂��B
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
REM ���x���s���Ă��������ʂɂȂ�͂��ł�
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
UPDATE TS_HEYA_TINRYO SET DOWN_YMD = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD'),KOUSINYMD=SYSDATE
		where 
		not exists
		(
		select tatemono_cd,toiawase_no,roomno from apawk
		where 
		apawk.tatemono_cd = ts_heya_tinryo.tatemono_cd
		and ts_heya_tinryo.kyokyu_ymd = to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
		and apawk.toiawase_no = ts_heya_tinryo.toiawase_no
		and apawk.roomno = ts_heya_tinryo.roomno
		)
		and kyokyu_ymd = to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
/
