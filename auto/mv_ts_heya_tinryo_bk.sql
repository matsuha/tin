REM
REM =head1 NAME 
REM
REM mv_ts_heya_tinryo_bk.sql
REM
REM =head1 DESCRIPTION
REM 
REM 部屋賃料バックアップ(TS_HEYA_TINRYO_BK)の情報をインサートする
REM 部屋賃料(TS_HEYA_TINRYO)から削除する
REM
REM      PRIMARY KEY(TATEMONO_CD,TOIAWASE_NO,KYOKYU_CD,ROOMNO,TINRYO,KYOKYU_YMD)
REM
REM 前回のデータセットに含まれていた賃料情報(TS_HEYA_TINRYO)が
REM 今回のデータにふくまれていなかった場合
REM TS_HEYA_TINRYOからTS_HEYA_TINRYO_BKにデータをバックアップし
REM 該当レコードをTS_HEYA_TINRYOから削除する。
REM 
REM 空室開始日〜空室終了日を一世代として、
REM 最新世代データのみをTS_HEYA_TINRYOに確保するため
REM １世代前の情報を削除する処理
REM
REM 重要）最終的にバックアップデータの削除日付を検討する必要あり
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
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
INSERT INTO TS_HEYA_TINRYO_BK (
				TATEMONO_CD
			    ,TOIAWASE_NO
				,KYOKYU_CD
				,ROOMNO
				,TINSYAKU_KEITAI_KBN
				,TINRYO
				,TINRYO_ZEI
				,KANRIHI
				,KANRIHI_ZEI
				,KYOEKIHI
				,KYOEKIHI_ZEI
				,SIKIKIN_HYOJI
				,SIKIKIN
				,SIKIKIN_TUKI_SU
				,SYOKYAKU
				,SYOKYAKUKIN
				,SYOKYAKUKIN_TUKI_SU
				,SYOKYAKUKIN_RITU
				,REIKIN_HYOJI
				,REIKIN
				,REIKIN_TUKI_SU
				,REIKIN_ZEI
				,KOSINRYO_UMU
				,KOSINRYO
				,KOSINRYO_TUKI_SU
				,KOSINRYO_ZEI
				,KOSIN_JIMU_TESURYO
				,KOSIN_JIMU_TESURYO_TUKI_SU
				,KOSIN_JIMU_TESURYO_ZEI
				,JUTAKU_HOKEN_UMU
				,JUTAKU_HOKENRYO
				,JUTAKU_HOKENRYO_ZEI
				,HOSYONIN_HITUYO
				,SUIDO_KONETUHI
				,CYOKAIHI
				,CYOKAIHI_ZEI
				,HIYO_INI1_NM
				,HIYO_INI1
				,HIYO_INI1_ZEI
				,HIYO_INI2_NM
				,HIYO_INI2
				,HIYO_INI2_ZEI
				,HIYO_INI3_NM
				,HIYO_INI3
				,HIYO_INI3_ZEI
				,HIYO_M1_NM
				,HIYO_M1
				,HIYO_M1_ZEI
				,HIYO_M2_NM
				,HIYO_M2
				,HIYO_M2_ZEI
				,HIYO_M3_NM
				,HIYO_M3
				,HIYO_M3_ZEI
				,HIYO_BIKO
				,PET_KANO_FLG
				,GAKKI_KANO_FLG
				,JIMUSYO_KANO_FLG
				,KODOMO_KANO_FLG
				,HOJIN_GENTEI_FLG
				,JOSEI_GENTEI_FLG
				,KOREISYA_MUKE_FLG
				,TANSINSYA_FUKA_FLG
				,SONOTA_NYUKYO_JOKEN
				,TOKUYAKU
				,TIN_BIKO
				,PR_CMT1
				,PR_CMT2
				,KITEN_TOUROKUYMD
				,INITIAL_YMD
				,KYOKYU_YMD
		)
		SELECT
		     TATEMONO_CD
		    ,TOIAWASE_NO
		    ,KYOKYU_CD
			,ROOMNO
			,TINSYAKU_KEITAI_KBN
			,TINRYO
			,TINRYO_ZEI
			,KANRIHI
			,KANRIHI_ZEI
			,KYOEKIHI
			,KYOEKIHI_ZEI
			,SIKIKIN_HYOJI
			,SIKIKIN
			,SIKIKIN_TUKI_SU
			,SYOKYAKU
			,SYOKYAKUKIN
			,SYOKYAKUKIN_TUKI_SU
			,SYOKYAKUKIN_RITU
			,REIKIN_HYOJI
			,REIKIN
			,REIKIN_TUKI_SU
			,REIKIN_ZEI
			,KOSINRYO_UMU
			,KOSINRYO
			,KOSINRYO_TUKI_SU
			,KOSINRYO_ZEI
			,KOSIN_JIMU_TESURYO
			,KOSIN_JIMU_TESURYO_TUKI_SU
			,KOSIN_JIMU_TESURYO_ZEI
			,JUTAKU_HOKEN_UMU
			,JUTAKU_HOKENRYO
			,JUTAKU_HOKENRYO_ZEI
			,HOSYONIN_HITUYO
			,SUIDO_KONETUHI
			,CYOKAIHI
			,CYOKAIHI_ZEI
			,HIYO_INI1_NM
			,HIYO_INI1
			,HIYO_INI1_ZEI
			,HIYO_INI2_NM
			,HIYO_INI2
			,HIYO_INI2_ZEI
			,HIYO_INI3_NM
			,HIYO_INI3
			,HIYO_INI3_ZEI
			,HIYO_M1_NM
			,HIYO_M1
			,HIYO_M1_ZEI
			,HIYO_M2_NM
			,HIYO_M2
			,HIYO_M2_ZEI
			,HIYO_M3_NM
			,HIYO_M3
			,HIYO_M3_ZEI
			,'' HIYO_BIKO
			,PET_KANO_FLG
			,GAKKI_KANO_FLG
			,JIMUSYO_KANO_FLG
			,KODOMO_KANO_FLG
			,HOJIN_GENTEI_FLG
			,JOSEI_GENTEI_FLG
			,KOREISYA_MUKE_FLG
			,TANSINSYA_FUKA_FLG
			,SONOTA_NYUKYO_JOKEN
			,TOKUYAKU
			,TIN_BIKO
			,PR_CMT1
			,PR_CMT2
			,KITEN_TOUROKUYMD
			,KYOKYU_YMD
			,KYOKYU_YMD
		FROM TS_HEYA_TINRYO
		where (tatemono_cd,roomno) 
		not in 
		(select tatemono_cd,roomno
		from apawk
		where 
		apawk.tatemono_cd = ts_heya_tinryo.tatemono_cd
		and apawk.roomno = ts_heya_tinryo.roomno
		and ts_heya_tinryo.kyokyu_ymd = to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
		)
		and ts_heya_tinryo.kyokyu_ymd = to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
/
DELETE FROM TS_HEYA_TINRYO
		where (tatemono_cd,roomno) 
		not in 
		(select tatemono_cd,roomno
		from apawk
		where 
		apawk.tatemono_cd = ts_heya_tinryo.tatemono_cd
		and apawk.roomno = ts_heya_tinryo.roomno
		and ts_heya_tinryo.kyokyu_ymd = to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
		)
		and kyokyu_ymd = to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
/
