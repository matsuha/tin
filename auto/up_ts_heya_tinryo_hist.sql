REM
REM =head1 NAME 
REM
REM up_ts_heya_tinryo_hist.sql
REM
REM =head1 DESCRIPTION
REM 
REM ��������(TS_HEYA_TINRYO_HIS)�̏����X�V����
REM
REM �O���TS_HEYA_TINRYO.PRIORITY=1(�ŗD��j�̂��̂�
REM�@������ŗD����̂P��PRIORITY_SELECT=1�ł���΁A
REM �����e�[�u���̋󎺊��Ԃ̍ŏI��������킷
REM ���t�f�[�^������̃f�[�^�񋟓��ōX�V����
REM
REM =over 2
REM
REM =item END_YMD (���߂̓��ꌚ���A�����A�����A�ː��A�ݔ����j�󎺏��̏I����
REM
REM =item END_YMD_SUM�T�}�����(���ꌚ���A�����j�̋󎺏��̏I����
REM
REM =back
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
REM ���x���s���Ă��������ʂƂȂ�
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
UPDATE TS_HEYA_TINRYO_HIS 
set END_YMD = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
,END_YMD_SUM = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
		,KOUSINYMD=SYSDATE
WHERE (TATEMONO_CD,TOIAWASE_NO,ROOMNO,TINRYO) in
(SELECT
		 TATEMONO_CD
		 ,TOIAWASE_NO
		 ,ROOMNO
		 ,TINRYO
		 from ts_heya_tinryo
		 where
		kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
		and priority_select=1
		and priority=1
)
AND END_YMD = to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
/
