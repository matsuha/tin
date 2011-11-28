REM
REM =head1 NAME 
REM
REM up_ts_heya_tinryo_hist.sql
REM
REM =head1 DESCRIPTION
REM 
REM 賃料履歴(TS_HEYA_TINRYO_HIS)の情報を更新する
REM
REM 前回のTS_HEYA_TINRYO.PRIORITY=1(最優先）のものが
REM　今回も最優先候補の１番PRIORITY_SELECT=1であれば、
REM 履歴テーブルの空室期間の最終日をあらわす
REM 日付データを今回のデータ提供日で更新する
REM
REM =over 2
REM
REM =item END_YMD (直近の同一建物、部屋、賃料、戸数、設備数）空室情報の終了日
REM
REM =item END_YMD_SUMサマリ情報(同一建物、部屋）の空室情報の終了日
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
REM 何度実行しても同じ結果となる
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
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
