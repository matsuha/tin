REM
REM =head1 NAME 
REM
REM ins_ts_heya.sql
REM
REM =head1 DESCRIPTION
REM 
REM 部屋マスタ(TS_HEYA)の情報をインサートする
REM
REM      PRIMARY KEY(TATEMONO_CD,TOIAWASE_NO,KYOKYU_CD,ROOMNO)
REM
REM となっているので、同一部屋情報は重複には存在しない
REM
REM インサートするとき間取り情報をシステム内で利用するため
REM
REM =over 2
REM
REM =item MADORI_NM（実データ）
REM
REM =item MADORI（システム利用データ）
REM
REM =back
REM
REM に分けて、MADORI側DECODEでまとめている。SQL参照。
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
INSERT INTO ts_heya (
	     TATEMONO_CD
            ,TOIAWASE_NO
	    ,KYOKYU_CD
	    ,ROOMNO
	    ,HEYA_NM
	    ,KAI
	    ,MADORI_NM
	    ,MADORI
	    ,MADORI_BIKO
	    ,HOGAKU_NM
	    ,SENYU_M2
	    ,BARUKONI_M2
	    ,SINTIKU_FLG
	,IPPAN_KOKAI_FLG
	,KEIYAKU_KEITAI_KBN
	    ,KUSITU_JOKYO_KBN
	    ,NYUKYO_KANO_YM
	    ,KUSITU_CHK_YMD
		)
SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,TOIAWASE_NO
		    ,'01' KYOKYU_CD
			,ROOMNO
			,HEYA_NM
			,KAI
			,MADORI_NM
			,decode(MADORI_NM
				,'1DK','1DK'
				,'1K','1K'
				,'1LDK','1LDK'
				,'1R','1R'
				,'1SDK','1DK'
				,'1SLDK','1LDK'
				,'2DK','2DK'
				,'2K','2K'
				,'2LDK','2LDK'
				,'2R','2K'
				,'2SDK','2DK'
				,'2SLDK','2LDK'
				,'3DK','3DK'
				,'3K','3K'
				,'3LDK','3LDK'
				,'3R','3K'
				,'3SDK','3DK'
				,'3SLDK','3LDK'
				,'4DK','4DK'
				,'4K','4K'
				,'4LDK','4LDK'
				,'4R','4K'
				,'4SDK','4DK'
				,'4SLDK','4LDK'
				,'5DK','5DK'
				,'5K','5K'
				,'5LDK','5LDK'
				,'5R','5K'
				,'5SDK','5DK'
				,'5SLDK','5LDK'
				,'6DK','6DK'
				,'6K','6K'
				,'6LDK','6LDK'
				,'6R','6K'
				,'6SDK','6DK'
				,'6SLDK','6LDK'
				,'7DK','7DK'
				,'7K','7K'
				,'7LDK','7LDK'
				,'7R','7K'
				,'7SDK','7DK'
				,'7SLDK','7LDK'
				,MADORI_NM) MADORI
			,MADORI_BIKO
			,HOGAKU_NM
			,SENYU_M2
			,BARUKONI_M2
			,SINTIKU_FLG
	,IPPAN_KOKAI_FLG
	,KEIYAKU_KEITAI_KBN
			,KUSITU_JOKYO_KBN
			,NYUKYO_KANO_YM
			,KUSITU_CHK_YMD
		    FROM apawk
		where (tatemono_cd,toiawase_no,roomno) not in (select tatemono_cd,toiawase_no,roomno from ts_heya
		where apawk.tatemono_cd = ts_heya.tatemono_cd
		and apawk.roomno = ts_heya.roomno
		and apawk.toiawase_no = ts_heya.toiawase_no
		)
/
