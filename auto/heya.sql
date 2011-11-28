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
	    ,TOUROKUYMD
	    ,KOUSINYMD
		)
SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,TOIAWASE_NO
		    ,'01' KYOKYU_CD
			,ROOMNO
			,HEYA_NM
			,KAI
			,MADORI_NM
			,'' MADORI
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
			    ,sysdate TOUROKUYMD
			    ,sysdate KOUSINYMD
		    FROM apawk
		where (tatemono_cd,toiawase_no,roomno) not in (select tatemono_cd,toiawase_no,roomno from ts_heya
		where apawk.tatemono_cd = ts_heya.tatemono_cd
		and apawk.roomno = ts_heya.roomno
		and apawk.toiawase_no = ts_heya.toiawase_no
		)
/
