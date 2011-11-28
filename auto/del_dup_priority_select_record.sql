REM
REM =head1 NAME 
REM
REM del_dup_priority_select_record.sqls
REM
REM =head1 DESCRIPTION
REM 
REM 賃料マスタの最優先参考FLG設定処理
REM set_prioritoy_select_f1.sqlに作業おいて
REM 該当レコードが複数になる可能性があるので、重複値削除処理を行う。
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
REM 最新のTOUROKUYMDを利用して、該当レコードを削除してから再実行となる
REM
REM =cut
REM
DROP TABLE DELDUMMY
/
CREATE TABLE DELDUMMY
AS
SELECT tatemono_cd,roomno,count(*) cnt
FROM TS_HEYA_TINRYO T1
WHERE T1.priority_select = '1'
AND T1.exclusion = '0'
AND T1.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
group by tatemono_cd,roomno
having count(*) > 1
/
CREATE INDEX DELDUMMYDEX on DELDUMMY(TATEMONO_CD,ROOMNO)
/
analyze table deldummy estimate statistics
/
analyze table ts_heya_tinryo estimate statistics
/
UPDATE TS_HEYA_TINRYO T1 SET PRIORITY_SELECT = 0,KOUSINYMD=SYSDATE
WHERE rowid < (SELECT MAX(rowid) 
FROM TS_HEYA_TINRYO T2
WHERE T1.priority_select = T2.priority_select 
AND T1.priority_select = '1'
AND T1.tatemono_cd = T2.tatemono_cd 
AND T1.roomno = T2.roomno 
AND T1.kyokyu_ymd = T2.kyokyu_ymd 
AND T1.exclusion = '0'
AND T1.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
AND (t1.tatemono_cd,t1.roomno) in (select tatemono_cd,roomno from deldummy)
AND (t2.tatemono_cd,t2.roomno) in (select tatemono_cd,roomno from deldummy)
AND exists (select tatemono_cd from deldummy)
)
/
