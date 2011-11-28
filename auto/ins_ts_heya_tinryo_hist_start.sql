REM
REM =head1 NAME 
REM
REM ins_ts_heya_tinryo_hist_start.sql
REM
REM =head1 DESCRIPTION
REM 
REM 賃料履歴マスタ(TS_HEYA_TINRYO_HIS)のTIN_HIS_YMD（履歴カラムに）
REM END_FLG!=1(提供継続またはSTART_FLG=1）情報よりも
REM END_FLG=1（提供が終了）している情報のほうが新しい場合
REM
REM 今回のデータに該当建物(TATEMONO_CD)＋部屋番号（ROOMNO)の情報が含まれれば
REM データ提供が再スタートされたとみなして、
REM START_FLG＝１のレコードをインサートします。
REM
REM =over 2
REM
REM =item TIN_HIS_YMDには今回のデータ提供日が入ります
REM
REM =back
REM
REM =head1 Trouble Shooting
REM
REM TOUROKUYMD が最新でSTART_FLG=1のレコードを消すオペレーションが必要
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
INSERT INTO TS_HEYA_TINRYO_HIS (
				TATEMONO_CD
				,KYOKYU_CD
				,ROOMNO
				,TINRYO_HIS_YMD
				,START_FLG
		)
		SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,'01' KYOKYU_CD
			,ROOMNO
			,KYOKYU_YMD
			,'1' START_FLG
		    FROM apawk
		where (tatemono_cd,roomno) in
		(select tatemono_cd,roomno
			from  apawk 
			where
			(tatemono_cd,roomno) in (
				select a.tatemono_cd,a.roomno from (
				select tatemono_cd,roomno,max(tinryo_his_ymd) maxend 
				from ts_heya_tinryo_his
				where end_flg = '1'
				group by tatemono_cd,roomno
			    ) a,
			    (
				select tatemono_cd,roomno,max(tinryo_his_ymd) maxnotend 
				from ts_heya_tinryo_his
				where end_flg != '1'
				group by tatemono_cd,roomno
			    ) b
				where a.tatemono_cd = b.tatemono_cd
				and a.roomno = b.roomno
				and maxend > maxnotend
			)
		)
/
