REM
REM =head1 NAME 
REM
REM up_heya_tinryo_priority_select_init.sql
REM
REM =head1 DESCRIPTION
REM 
REM 賃料マスタ(TS_HEYA_TINRYO)の最優先参考フラグ(PRIORITY_SELECT)を初期化する
REM 最優先FLG（PRIORITY)でないことに注意。
REM 同一建物、同一部屋の情報が複数あるため、優先順位をこのカラムで指定する
REM 最優先は１である
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
REM 何度実行しても同じ結果になる。
REM
REM =head1 AUTHOR
REM 
REM 最新のTOUROKUYMDを利用して、該当レコードを削除してから再実行となる
REM
REM =cut
REM
REM
UPDATE TS_HEYA_TINRYO SET PRIORITY_SELECT = 0,KOUSINYMD=SYSDATE
WHERE PRIORITY_SELECT !=0
AND kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
/
