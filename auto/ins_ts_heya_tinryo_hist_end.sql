REM
REM =head1 NAME 
REM
REM ins_ts_heya_tinryo_hist_end.sql
REM
REM =head1 DESCRIPTION
REM 
REM ���������}�X�^(TS_HEYA_TINRYO_HIS)�̏����C���T�[�g����
REM
REM �O��f�[�^�񋟂����ꂽ����(TATEMONO_CD)�{�����iROOMNO)
REM �̏�񂪁A����̃f�[�^�Ɋ܂܂�Ă��Ȃ��ꍇ
REM END_FLG=1�̏����Y������CD�{ROOMNO�ŃC���T�[�g����B
REM
REM =over 2
REM
REM =item TIN_HIS_YMD(����̃f�[�^�������j
REM
REM =item END_YMD(�O��̃f�[�^�񋟓��j
REM
REM =item END_YMD_SUM(�O��̃f�[�^�񋟓�) ����󎺊��ԓ��ŕ������R�[�h�����݂����
REM START_YMD_SUM,END_YMD_SUM�ŋ󎺊��ԑS�̂�\��
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
REM �ŐVTOUROKUYMD�œ��͂��ꂽEND_FLG=1�̏����폜���āA�Đݒ肷��
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
REM
REM �ŐV�f�[�^�Z�b�g�Ɋ܂܂�Ȃ��Ȃ����A���߂Ă̕����̂�END_FLG��t����
REM �����ɓo�^����
REM
set termout off
DROP TABLE WK_INS_HIS;
set termout on
CREATE TABLE WK_INS_HIS
AS
select apawk.tatemono_cd,apawk.roomno
		from apawk,ts_heya_tinryo
		where 
		apawk.tatemono_cd = ts_heya_tinryo.tatemono_cd
		and apawk.roomno = ts_heya_tinryo.roomno
		and ts_heya_tinryo.kyokyu_ymd = to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
/
INSERT INTO TS_HEYA_TINRYO_HIS (
				TATEMONO_CD
				,KYOKYU_CD
				,ROOMNO
				,TINRYO_HIS_YMD
				,END_YMD
				,END_YMD_SUM
				,END_FLG
		)
		SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,KYOKYU_CD
			,ROOMNO
			,to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
			,to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
			,to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
			,'1' END_FLG
		    FROM TS_HEYA_TINRYO
		where (tatemono_cd,roomno) 
		not in 
		(select tatemono_cd,roomno
		from WK_INS_HIS
		)
		and kyokyu_ymd = to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
/
