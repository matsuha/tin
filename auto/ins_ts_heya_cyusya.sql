REM
REM =head1 NAME 
REM
REM ins_ts_heya_cyusya.sql
REM
REM =head1 DESCRIPTION
REM 
REM 部屋駐車場マスタ(TS_HEYA_CYUSYA)の情報をインサートする
REM
REM      PRIMARY KEY(TATEMONO_CD,TOIAWASE_NO,KYOKYU_CD,ROOMNO)
REM
REM ワークテーブルの情報のみインサートする
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
REM del_ts_heya_cyusya.sqlを実行すれば、最新駐車場データのみ再構築可能
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
INSERT INTO TS_HEYA_CYUSYA (
	     TATEMONO_CD
	    ,TOIAWASE_NO
	    ,KYOKYU_CD
	    ,ROOMNO
	    ,CYUSYAJO
	    ,CYUSYA_RYO
	    ,CYUSYA_RYO_ZEI
	    ,CYUSYA_SIKIKIN_HYOJI
	    ,CYUSYA_SIKIKIN
	    ,CYUSYA_SIKIKIN_TUKI_SU
	    ,CYUSYA_KOSINRYO
	    ,CYUSYA_KOSINRYO_TUKI_SU
	    ,CYUSYA_KOSINRYO_ZEI
	    ,CYUSYAJO_BIKO
	    ,CYUSYA_KANO_DAISU
	    ,CYUSYA_SYOKAI_RYO
	    ,CYUSYA_SYOKAI_RYO_ZEI
	    ,CYUSYA_REIKIN_HYOJI
	    ,CYUSYA_REIKIN
	    ,CYUSYA_REIKIN_TUKI_SU
	    ,CYUSYA_REIKIN_ZEI
	    ,CYUSYA_KOSIN_TESURYO
	    ,CYUSYA_KOSIN_TESURYO_TUKI_SU
	    ,CYUSYA_KOSIN_TESURYO_ZEI
		)
SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,TOIAWASE_NO
		    ,'01' KYOKYU_CD
			,ROOMNO
            ,CYUSYAJO
            ,CYUSYA_RYO
            ,CYUSYA_RYO_ZEI
            ,CYUSYA_SIKIKIN_HYOJI
            ,CYUSYA_SIKIKIN
            ,CYUSYA_SIKIKIN_TUKI_SU
            ,CYUSYA_KOSINRYO
            ,CYUSYA_KOSINRYO_TUKI_SU
            ,CYUSYA_KOSINRYO_ZEI
            ,CYUSYAJO_BIKO
            ,CYUSYA_KANO_DAISU
            ,CYUSYA_SYOKAI_RYO
            ,CYUSYA_SYOKAI_RYO_ZEI
            ,CYUSYA_REIKIN_HYOJI
            ,CYUSYA_REIKIN
            ,CYUSYA_REIKIN_TUKI_SU
            ,CYUSYA_REIKIN_ZEI
            ,CYUSYA_KOSIN_TESURYO
            ,CYUSYA_KOSIN_TESURYO_TUKI_SU
            ,CYUSYA_KOSIN_TESURYO_ZEI
		    FROM apawk
		where (tatemono_cd,toiawase_no,roomno) not in (select tatemono_cd,toiawase_no,roomno from ts_heya_cyusya
		where apawk.tatemono_cd = ts_heya_cyusya.tatemono_cd
		and apawk.roomno = ts_heya_cyusya.roomno
		and apawk.toiawase_no = ts_heya_cyusya.toiawase_no
		)
/
