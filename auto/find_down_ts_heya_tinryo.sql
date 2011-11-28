REM
REM =head1 NAME 
REM
REM find_down_ts_heya_tinryo.sql
REM
REM =head1 DESCRIPTION
REM 
REM 部屋賃料マスタ（TS_HEYA_TINRYO)
REM
REM 前回のデータ提供日には含まれていたが、今回のデータには含まれていない
REM 建物(TETEMONO_CD)＋部屋(ROOMNO)の情報の前回データに
REM (データ提供終了日）DOWN_YMDを今回のデータ提供日で更新します。
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
REM 何度実行しても同じ結果になるはずです
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
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
