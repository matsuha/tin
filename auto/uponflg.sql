UPDATE TS_TATEMONO T1 SET NOFLG = '0',KOUSINYMD=SYSDATE
WHERE tourokuymd < (SELECT MAX(trunc(tourokuymd)) 
FROM TS_TATEMONO T2
WHERE T1.tatemono_cd = T2.tatemono_cd 
)
/
commit
/
UPDATE TS_TATEMONO_DTL T1 SET NOFLG = '0',KOUSINYMD=SYSDATE
WHERE tourokuymd < (SELECT MAX(trunc(tourokuymd)) 
FROM TS_TATEMONO_DTL T2
WHERE T1.tatemono_cd = T2.tatemono_cd 
)
/
commit
/
UPDATE TS_HEYA T1 SET NOFLG = '0',KOUSINYMD=SYSDATE
WHERE tourokuymd < (SELECT MAX(trunc(tourokuymd)) 
FROM TS_HEYA T2
WHERE T1.tatemono_cd = T2.tatemono_cd 
AND T1.roomno = T2.roomno 
)
/
commit
/
UPDATE TS_HEYA_DTL T1 SET NOFLG = '0',KOUSINYMD=SYSDATE
WHERE tourokuymd < (SELECT MAX(trunc(tourokuymd)) 
FROM TS_HEYA_DTL T2
WHERE T1.tatemono_cd = T2.tatemono_cd 
AND T1.roomno = T2.roomno 
)
/
commit
/
UPDATE TS_HEYA_CYUSYA T1 SET NOFLG = '0',KOUSINYMD=SYSDATE
WHERE tourokuymd < (SELECT MAX(trunc(tourokuymd)) 
FROM TS_HEYA_CYUSYA T2
WHERE T1.tatemono_cd = T2.tatemono_cd 
AND T1.roomno = T2.roomno 
)
/
commit
/
UPDATE TS_HEYA_SETUBI T1 SET NOFLG = '0',KOUSINYMD=SYSDATE
WHERE tourokuymd < (SELECT MAX(trunc(tourokuymd)) 
FROM TS_HEYA_SETUBI T2
WHERE T1.tatemono_cd = T2.tatemono_cd 
AND T1.roomno = T2.roomno 
)
/
commit
/
