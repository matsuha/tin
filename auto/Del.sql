set timing on
set echo on
spool delete_work_tb
select 'CNTWK'||count(*) PREC from &&WORK_TBL
/
DROP TABLE RAW&&WORK_TBL;
CREATE TABLE RAW&&WORK_TBL
AS
SELECT 
JUSHOCD1,
JUSHOCD2,
COUNT(*) CNT
from &&WORK_TBL
GROUP BY JUSHOCD1,JUSHOCD2
/
DELETE FROM   &&WORK_TBL
WHERE TINSYAKU_KEITAI_KBN like 'ダブルゼロ'
/
list
COMMIT
/
DELETE FROM   &&WORK_TBL
WHERE  10000 > TINRYO
OR  1000000 < TINRYO
/
list
COMMIT
/
DELETE FROM   &&WORK_TBL
WHERE  KANRIHI > TINRYO
/
list
COMMIT
/
DELETE FROM   &&WORK_TBL
WHERE  KYOEKIHI > TINRYO
/
list
COMMIT
/
DELETE FROM   &&WORK_TBL
WHERE  KANSEI_YMD < TO_DATE('19600101','YYYYMMDD')
/
list
COMMIT
/
DELETE FROM   &&WORK_TBL
WHERE  KANSEI_YMD > KYOKYU_YMD + 365
/
list
COMMIT
/
DELETE FROM   &&WORK_TBL
WHERE  not (JUSHOCD1 >= 1 AND JUSHOCD1 <= 47)
/
list
COMMIT
/
DELETE FROM   &&WORK_TBL
WHERE
TATEMONO_SYUBETU_NM 
not in
(
'アパート',
'貸家',
'長屋',
'コーポ',
'マンション',
'ハイツ',
'テラスハウス',
'一戸建て',
'タウンハウス'
)
/
list
COMMIT
/
DELETE FROM   &&WORK_TBL
WHERE
KOZO_SYUBETU_NM
not in
(
'軽量鉄骨造',
'ALC',
'木造',
'鉄骨造',
'SRC(鉄骨鉄筋コンクリート)',
'重量鉄骨造',
'PC(プレキャストコンクリート)',
'RC(鉄筋コンクリート造)'
)
/
list
COMMIT
/
DELETE FROM   &&WORK_TBL
WHERE
MADORI_NM not in
(
'1DK','1DK'
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
)
/
list
COMMIT
/
DELETE FROM &&WORK_TBL
WHERE  KUSITU_CHK_YMD <  KYOKYU_YMD - 365
/
DELETE FROM &&WORK_TBL
WHERE  KITEN_TOUROKUYMD <  KYOKYU_YMD - 365
/
list
COMMIT
/
UPDATE &&WORK_TBL SET TATEMONO_SYUBETU = 
			decode(TATEMONO_SYUBETU_NM
				,'アパート','アパート'
				,'コーポ','アパート'
				,'ハイツ','アパート'
				,'タウンハウス','タウンハウス・テラスハウス'
				,'テラスハウス','タウンハウス・テラスハウス'
				,'長屋','タウンハウス・テラスハウス'
				,'マンション','マンション'
				,'一戸建て','一戸建て'
				,'貸家','一戸建て'
				,TATEMONO_SYUBETU_NM)
/
list
COMMIT
/
drop table JU1STD&&WORK_TBL
/
create table JU1STD&&WORK_TBL as
select jushocd1,jushocd2,tatemono_syubetu,
avg(tinryo/senyu_m2) m2tin, 
stddev(tinryo/senyu_m2) std,
count(*) cnt
from &&WORK_TBL
group by jushocd1,jushocd2,tatemono_syubetu
/
delete from &&WORK_TBL
where 
(tatemono_cd,roomno,toiawase_no,tinryo)
in
(
select tatemono_cd,roomno,toiawase_no,tinryo from &&WORK_TBL apawk,JU1STD&&WORK_TBL ju1std
where
(
apawk.tinryo/apawk.senyu_m2 > ( ju1std.m2tin + ju1std.std * 2 )
or
apawk.tinryo/apawk.senyu_m2 < ( ju1std.m2tin - ju1std.std * 2 )
)
and
apawk.jushocd1 = ju1std.jushocd1
and
apawk.jushocd2 = ju1std.jushocd2
and
apawk.tatemono_syubetu = ju1std.tatemono_syubetu
)
/
list
commit
/
delete from &&WORK_TBL
where (jushocd1,jushocd2) in 
(
select jushocd1,jushocd2 from ju2
where haisiymd  < (select kyokyu_ymd - 365 * 5  from &&WORK_TBL where rownum = 1)
)
/
delete from  &&WORK_TBL
where (jushocd1,jushocd2,jushocd3) in 
(
select jushocd1,jushocd2,jushocd3 from ju3
where haisiymd  < (select kyokyu_ymd - 365 * 5  from &&WORK_TBL where rownum = 1)
)
/
delete from &&WORK_TBL
where (jushocd1,jushocd2,jushocd3,jushocd4) in 
(
select jushocd1,jushocd2,jushocd3,jushocd4 from ju4
where haisiymd < (select kyokyu_ymd - 365 * 5  from &&WORK_TBL where rownum = 1)
)
/
commit
/
delete from &&WORK_TBL
where (eki_nm1 like '%東京都%'
or eki_nm2 like '%東京都%'
or eki_nm3 like '%東京都%')
and jushocd1 > 16
/
delete from &&WORK_TBL
where (eki_nm1 like '%神奈川%'
or eki_nm2 like '%神奈川%'
or eki_nm3 like '%神奈川%')
and jushocd1 > 16
/
delete from &&WORK_TBL
where (eki_nm1 like '%埼玉%'
or eki_nm2 like '%埼玉%'
or eki_nm3 like '%埼玉%')
and jushocd1 > 16
/
delete from &&WORK_TBL
where (eki_nm1 like '%千葉%'
or eki_nm2 like '%千葉%'
or eki_nm3 like '%千葉%')
and jushocd1 > 16
/
delete from &&WORK_TBL
where (eki_nm1 like '%兵庫%'
or eki_nm2 like '%兵庫%'
or eki_nm3 like '%兵庫%')
and jushocd1 < 15
/
delete from &&WORK_TBL
where (eki_nm1 like '%大阪%'
or eki_nm2 like '%大阪%'
or eki_nm3 like '%大阪%')
and jushocd1 < 15
/
delete from &&WORK_TBL
where (eki_nm1 like '%愛知%'
or eki_nm2 like '%愛知%'
or eki_nm3 like '%愛知%')
and jushocd1 < 15
/
delete from &&WORK_TBL
where (eki_nm1 like '%曽根%兵庫%'
or eki_nm2 like '%曽根%兵庫%'
or eki_nm3 like '%曽根%兵庫%')
and jushocd1 = '27'
/
delete from &&WORK_TBL
where (eki_nm1 like '%曽根%大阪%'
or eki_nm2 like '%曽根%大阪%'
or eki_nm3 like '%曽根%大阪%')
and jushocd1 = '28'
/
delete from &&WORK_TBL
where (eki_nm1 like '%競馬場前%北海道%'
or eki_nm2 like '%競馬場前%北海道%'
or eki_nm3 like '%競馬場前%北海道%')
and jushocd1 = '40'
/
delete from &&WORK_TBL
where (eki_nm1 like '%競馬場前%福岡%'
or eki_nm2 like '%競馬場前%福岡%'
or eki_nm3 like '%競馬場前%福岡%')
and jushocd1 = '01'
/
commit
/
select 'CNTWK'||count(*) PREC from &&WORK_TBL
/
