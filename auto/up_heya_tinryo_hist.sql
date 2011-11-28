REM UPDATE TS_HEYA_TINRYO SET KYOKYU_YMD = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD'),KOUSINYMD=SYSDATE
REM 		where (tatemono_cd,toiawase_no,roomno,tinryo) in (select tatemono_cd,toiawase_no,roomno,tinryo from apawk)
REM 		and KYOKYU_YMD =  to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
REM /
UPDATE TS_HEYA_TINRYO_HIS SET 
END_YMD = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD'),
KOUSINYMD=SYSDATE
		where (tatemono_cd,toiawase_no,roomno,tinryo) in 
		(select tatemono_cd,toiawase_no,roomno,tinryo from ts_heya_tinryo
		where kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD'))
		and END_YMD =  to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
		and start_flg != '1'
		and end_flg != '1'
/
