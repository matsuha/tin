INSERT INTO TS_HEYA_DTL (
	     TATEMONO_CD
	    ,TOIAWASE_NO
	    ,KYOKYU_CD
	    ,ROOMNO
	    ,MADORI_DTL_NM1
	    ,MADORI_DTL_JYOSU1
	    ,MADORI_DTL_NM2
	    ,MADORI_DTL_JYOSU2
	    ,MADORI_DTL_NM3
	    ,MADORI_DTL_JYOSU3
	    ,MADORI_DTL_NM4
	    ,MADORI_DTL_JYOSU4
	    ,MADORI_DTL_NM5
	    ,MADORI_DTL_JYOSU5
	    ,MADORI_DTL_NM6
	    ,MADORI_DTL_JYOSU6
	    ,MADORI_DTL_NM7
	    ,MADORI_DTL_JYOSU7
	    ,MADORI_DTL_NM8
	    ,MADORI_DTL_JYOSU8
	    ,MADORI_DTL_NM9
	    ,MADORI_DTL_JYOSU9
	    ,MADORI_DTL_NM10
	    ,MADORI_DTL_JYOSU10
	    ,MADORI_DTL_NM11
	    ,MADORI_DTL_JYOSU11
	    ,MADORI_DTL_NM12
	    ,MADORI_DTL_JYOSU12
	    ,TOUROKUYMD
	    ,KOUSINYMD
	)
	SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,TOIAWASE_NO
		    ,'01' KYOKYU_CD
	    ,ROOMNO
	    ,MADORI_DTL_NM1
	    ,MADORI_DTL_JYOSU1
	    ,MADORI_DTL_NM2
	    ,MADORI_DTL_JYOSU2
	    ,MADORI_DTL_NM3
	    ,MADORI_DTL_JYOSU3
	    ,MADORI_DTL_NM4
	    ,MADORI_DTL_JYOSU4
	    ,MADORI_DTL_NM5
	    ,MADORI_DTL_JYOSU5
	    ,MADORI_DTL_NM6
	    ,MADORI_DTL_JYOSU6
	    ,MADORI_DTL_NM7
	    ,MADORI_DTL_JYOSU7
	    ,MADORI_DTL_NM8
	    ,MADORI_DTL_JYOSU8
	    ,MADORI_DTL_NM9
	    ,MADORI_DTL_JYOSU9
	    ,MADORI_DTL_NM10
	    ,MADORI_DTL_JYOSU10
	    ,MADORI_DTL_NM11
	    ,MADORI_DTL_JYOSU11
	    ,MADORI_DTL_NM12
	    ,MADORI_DTL_JYOSU12
		,sysdate TOUROKUYMD
		,sysdate KOUSINYMD
		    FROM apawk
		where (tatemono_cd,toiawase_no,roomno) not in (select tatemono_cd,toiawase_no,roomno from ts_heya_dtl
		where apawk.tatemono_cd = ts_heya_dtl.tatemono_cd
		and apawk.roomno = ts_heya_dtl.roomno
		and apawk.toiawase_no = ts_heya_dtl.toiawase_no
		)
/
