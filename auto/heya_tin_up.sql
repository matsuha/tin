UPDATE TS_HEYA_TINRYO SET KYOKYU_YMD = &KYOKYOYMD,KOUSINYMD=SYSDATE
		where (tatemono_cd,toiawase_no,roomno,tinryo) in (select tatemono_cd,toiawase_no,roomno,tinryo from apawk)
/
