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
	    ,TOUROKUYMD
	    ,KOUSINYMD
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
			    ,sysdate TOUROKUYMD
			    ,sysdate KOUSINYMD
		    FROM apawk
		where (tatemono_cd,toiawase_no,roomno) not in (select tatemono_cd,toiawase_no,roomno from ts_heya_cyusya
		where apawk.tatemono_cd = ts_heya_cyusya.tatemono_cd
		and apawk.roomno = ts_heya_cyusya.roomno
		and apawk.toiawase_no = ts_heya_cyusya.toiawase_no
		)
/
