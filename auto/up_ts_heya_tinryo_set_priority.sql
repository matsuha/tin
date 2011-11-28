REM
REM =head1 NAME 
REM
REM up_ts_heya_tinryo_set_priority.sql
REM
REM =head1 DESCRIPTION
REM 
REM 賃料マスタ(TS_HEYA_TINRYO)の最優先情報をこの段階で更新する
REM
REM まず、TS_HEYA_TINRYOのPRIORITY=0にして初期化する。
REM 最優先候補１番PRIORITY_SELECT=1のレコードをPRIORITY=1
REM に更新する。
REM 同情報を建物マスタ（TS_TATEMONO にも反映する。
REM TS_TATEMONO.PRIORITY=1に設定する。
REM (TS_TATEMNO.PRIORITYも事前に０に初期化する）
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
REM 何度実行しても同じ結果になる。
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
REM
UPDATE TS_HEYA_TINRYO SET PRIORITY = 0
		where 
		kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
/
REM
REM プライオリティー候補物件をプライオリティー物件として更新する
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
