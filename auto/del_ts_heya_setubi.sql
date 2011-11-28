REM
REM =head1 NAME 
REM
REM del_ts_heya_setubi.sql
REM
REM =head1 DESCRIPTION
REM 
REM 部屋設備マスタ(TS_HEYA_SETUBI)の情報を削除し、
REM 新しいデータと入れ替える準備をします。
REM
REM     PRIMARY KEY(TATEMONO_CD,TOIAWASE_NO,KYOKYU_CD,ROOMNO)
REM
REM ワークテーブル（今回提供データ格納テーブル）にある
REM データのみ削除します。
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
REM 該当回のみの状態であれば、再実行すれば大丈夫である。
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
delete from ts_heya_setubi
where ( tatemono_cd,toiawase_no,roomno) 
in 
( select tatemono_cd,toiawase_no,roomno 
		from apawk
		where 
		apawk.tatemono_cd = ts_heya_setubi.tatemono_cd
		and apawk.roomno = ts_heya_setubi.roomno
		and apawk.toiawase_no = ts_heya_setubi.toiawase_no
)
/
