INSERT INTO TS_TATEMONO(
	     TATEMONO_CD
	    ,TOIAWASE_NO
	    ,KYOKYU_CD
	    ,JUSHOCD1
	    ,JUSHOCD2
	    ,JUSHOCD3
	    ,JUSHOCD4
	    ,YUBIN_NO
	    ,TATEMONO_SYUBETU_NM
	    ,TATEMONO_SYUBETU
	    ,KOZO_SYUBETU_NM
	    ,KOZO_SYUBETU
	    ,SO_KAISU
	    ,CHIKA_KAISU
	    ,TATEMONO_M2
	    ,SIKITI_M2
	    ,SO_KOSU
	    ,KANSEI_YMD
	    ,TOUROKUYMD
	    ,KOUSINYMD
		)
SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,TOIAWASE_NO
		    ,'01' KYOKYU_CD
		    ,JUSHOCD1
		    ,JUSHOCD2
		    ,JUSHOCD3
		    ,JUSHOCD4
		    ,YUBIN_NO
		    ,TATEMONO_SYUBETU_NM
		    ,'' TATEMONO_SYUBETU
		    ,KOZO_SYUBETU_NM
		    ,'' KOZO_SYUBETU
		    ,SO_KAISU
		    ,0 CHIKA_KAISU
		    ,TATEMONO_M2
		    ,SIKITI_M2
		    ,SO_KOSU
		    ,KANSEI_YMD
		    ,SYSDATE TOUROKUYMD
		    ,SYSDATE KOUSINYMD
	    FROM apawk
		where (tatemono_cd,toiawase_no) not in (select tatemono_cd,toiawase_no from ts_tatemono
		where apawk.tatemono_cd = ts_tatemono.tatemono_cd
		and apawk.toiawase_no = ts_tatemono.toiawase_no
		)
/
