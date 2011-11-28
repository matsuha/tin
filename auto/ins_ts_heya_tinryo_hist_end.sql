REM
REM =head1 NAME 
REM
REM ins_ts_heya_tinryo_hist_end.sql
REM
REM =head1 DESCRIPTION
REM 
REM 賃料履歴マスタ(TS_HEYA_TINRYO_HIS)の情報をインサートする
REM
REM 前回データ提供がされた建物(TATEMONO_CD)＋部屋（ROOMNO)
REM の情報が、今回のデータに含まれていない場合
REM END_FLG=1の情報を該当建物CD＋ROOMNOでインサートする。
REM
REM =over 2
REM
REM =item TIN_HIS_YMD(今回のデータ供給日）
REM
REM =item END_YMD(前回のデータ提供日）
REM
REM =item END_YMD_SUM(前回のデータ提供日) 同一空室期間内で複数レコードが存在する際
REM START_YMD_SUM,END_YMD_SUMで空室期間全体を表す
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
REM 最新TOUROKUYMDで入力されたEND_FLG=1の情報を削除して、再設定する
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
REM
REM 最新データセットに含まれなくなった、初めての物件のみEND_FLGを付けて
REM 履歴に登録する
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
