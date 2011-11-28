REM
REM =head1 NAME 
REM
REM set_priority_select_f1.sql
REM
REM =head1 DESCRIPTION
REM 
REM 賃料マスタ(TS_HEYA_TINRYO)の優先度参考フラグを設定する
REM 最優先フラグ（PRIORITY)はいきなり更新せず、参考FLG
REM （PRIORITY_SELECT)に設定する）
REM
REM =head2 ルール1
REM
REM 同一建物、同一部屋、複数問合せＮＯの場合、最小の賃料を選択
REM 暫定フラグ　 PRIORITY_SELECT = '3'　を設定
REM
REM =head2 ルール2
REM
REM 上記処理のPRIORITY_SELECT = '3'を対象として
REM TS_TATEMONO.KOSU 総戸数がＮＵＬＬでない物件を１つ選択、（仮にMAX取得としている）
REM PRIORITY_SELECT = '2'を設定
REM
REM =head2 ルール3
REM
REM 上記処理のPRIORITY_SELECT = '2'を対象として
REM 設備保有項目(TS_HEYA_SETUBI.SETUBI_CNT)が一番多い物件を指定
REM PRIORITY_SELECT = '1'を設定
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
REM 基本的には、最初のデータから再構築となる。
REM
REM =head1 AUTHOR
REM 
REM 最新のTOUROKUYMDを利用して、該当レコードを削除してから再実行となる
REM
REM =cut
REM
REM
UPDATE TS_HEYA_TINRYO SET PRIORITY_SELECT = '3',KOUSINYMD=SYSDATE
		where 
		(tatemono_cd,roomno,kyokyu_ymd,tinryo)
		in 
		(
			select tatemono_cd,roomno,kyokyu_ymd,tinryo from (
				(select 
						ts_heya_tinryo.tatemono_cd,
						ts_heya_tinryo.roomno,
						ts_heya_tinryo.kyokyu_ymd,
						min(ts_heya_tinryo.tinryo) tinryo
						from 
						ts_heya_tinryo
				where 
				ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
				and ts_heya_tinryo.exclusion='0'
				group by 
				ts_heya_tinryo.tatemono_cd,
				ts_heya_tinryo.roomno,
				ts_heya_tinryo.kyokyu_ymd
				)
			)
		)
/
COMMIT
/
REM
REM
REM UPDATE TS_HEYA_TINRYO SET PRIORITY_SELECT = '2',KOUSINYMD=SYSDATE
REM 		where 
REM 		(tatemono_cd,toiawase_no)
REM 		in 
REM 		(
REM 		select tatemono_cd,toiawase_no
REM 		from ts_tatemono
REM 		where (tatemono_cd, nvl(so_kosu,0)) in 
REM 				(
REM 				select tatemono_cd,max(nvl(so_kosu,0)) so_kosu 
REM 				from ts_tatemono
REM 				where (tatemono_cd,toiawase_no) in
REM 						(
REM 						select 
REM 								ts_heya_tinryo.tatemono_cd,
REM 								ts_heya_tinryo.toiawase_no
REM 								from 
REM 								ts_heya_tinryo
REM 								where 
REM 								ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
REM 								and ts_heya_tinryo.priority_select = '3'
REM 								and ts_heya_tinryo.exclusion='0'
REM 						)
REM 				group by tatemono_cd
REM 				)
REM 		)
REM 		and  ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
REM 		and ts_heya_tinryo.priority_select = '3'
REM /
REM
REM
DROP TABLE SETP1DUMMY
/
CREATE TABLE SETP1DUMMY
AS
select toiawase_no,tatemono_cd,roomno
		from ts_heya_setubi
		where (tatemono_cd,roomno,nvl(setubi_cnt,0)) in 
				(
				select tatemono_cd,roomno,max(nvl(setubi_cnt,0)) setubi_cnt 
				from ts_heya_setubi
				where (tatemono_cd,toiawase_no,roomno) in
						(
						select 
								ts_heya_tinryo.tatemono_cd,
								ts_heya_tinryo.toiawase_no,
								ts_heya_tinryo.roomno
								from 
								ts_heya_tinryo
								where 
								ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
								and ts_heya_tinryo.priority_select = '3'
								and ts_heya_tinryo.exclusion='0'
						)
				group by tatemono_cd,roomno
)
/
UPDATE TS_HEYA_TINRYO SET PRIORITY_SELECT = '1',KOUSINYMD=SYSDATE
		where 
		(toiawase_no,tatemono_cd,roomno)
		in 
		(
		select toiawase_no,tatemono_cd,roomno
				from SETP1DUMMY
		)
		and  ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
		and ts_heya_tinryo.priority_select = '3'
/
COMMIT
/
