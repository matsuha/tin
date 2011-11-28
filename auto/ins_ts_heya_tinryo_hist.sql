REM
REM =head1 NAME 
REM
REM ins_ts_heya_tinryo_hist.sql
REM
REM =head1 DESCRIPTION
REM 
REM �����}�X�^(TS_HEYA_TINRYO0�̍ŗD��FLG(PRIORITY)���O��P�ł������̂ɍ���P�łȂ����̂́A
REM ���������}�X�^�Ƀf�[�^���i�[����B
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
REM ��{�I�ɂ́A�ŏ��̃f�[�^����č\�z�ƂȂ�B
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
INSERT INTO TS_HEYA_TINRYO_HIS (
				TATEMONO_CD
				,KYOKYU_CD
				,TOIAWASE_NO
				,ROOMNO
				,START_YMD
				,TINRYO_HIS_YMD
				,END_YMD
				,END_YMD_SUM
				,TINRYO
				,KANRIHI
				,KYOEKIHI
				,SIKIKIN
				,SIKIKIN_TUKI_SU
				,REIKIN
				,REIKIN_TUKI_SU
			,TINSYAKU_KEITAI_KBN
			,SYOKYAKU
			,SYOKYAKUKIN
			,SYOKYAKUKIN_TUKI_SU
			,SYOKYAKUKIN_RITU
			,KOSINRYO
			,KOSINRYO_TUKI_SU
		)
		SELECT
		    tatemono_cd
		    ,KYOKYU_CD
			,TOIAWASE_NO
			,ROOMNO
			,INITIAL_YMD
			,KYOKYU_YMD
			,KYOKYU_YMD
			,KYOKYU_YMD
			,TINRYO
			,KANRIHI
			,KYOEKIHI
			,SIKIKIN
			,SIKIKIN_TUKI_SU
			,REIKIN
			,REIKIN_TUKI_SU
			,TINSYAKU_KEITAI_KBN
			,SYOKYAKU
			,SYOKYAKUKIN
			,SYOKYAKUKIN_TUKI_SU
			,SYOKYAKUKIN_RITU
			,KOSINRYO
			,KOSINRYO_TUKI_SU
		from ts_heya_tinryo
		where 
		kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
		and priority_select=1
		and priority!=1
/
