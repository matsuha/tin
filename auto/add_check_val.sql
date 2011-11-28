@define
delete from ts_kusituritu_ju_bk
where kusitu_ym = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd')
and sflg = '2'
/
insert into ts_kusituritu_ju_bk
 (jushocd1,jushocd2,kusitu_ym,sflg,bosyu_sousu)
select 
    jushocd1,
    jushocd2,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd') kusitu_ym,
	'2' sflg,
    sum(setubi_cnt) bosyu_sousu
  from 
  apawk
  WHERE JUSHOCD1 IS NOT NULL
  group by 
    jushocd1,
    jushocd2,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd'),
	'2'
/
commit
/
delete from ts_kusituritu_ju_bk
where kusitu_ym = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd')
and sflg = '3'
/
insert into ts_kusituritu_ju_bk
 (jushocd1,kusitu_ym,sflg,bosyu_sousu)
select 
    jushocd1,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd') kusitu_ym,
	'3' sflg,
    avg(tinryo) bosyu_sousu
  from 
  apawk
  WHERE JUSHOCD1 IS NOT NULL
  group by 
    jushocd1,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd'),
	'3'
/
commit
/
delete from ts_kusituritu_ju_bk
where kusitu_ym = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd')
and sflg = '4'
/
insert into ts_kusituritu_ju_bk
 (
 jushocd1,
 jushocd2,
 tatemono_syubetu,
 kusitu_ym,
 sflg,
SUM_SENYU_M2,
SUM_TINRYO,
SUM_KANSEI_YMD,
SUM_PERIOD,
SUM_KOSU
)
select 
    jushocd1,
    jushocd2,
	tatemono_syubetu,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd') kusitu_ym,
	'4' sflg,
	sum(senyu_m2) SUM_SENYU_M2 ,
	sum((end_tinryo)+ nvl(END_KANRIHI,0)+ nvl(END_KYOEKIHI,0)) SUM_TINRYO ,
	sum(KYOKYU_YMD - KANSEI_YMD) SUM_KANSEI_YMD ,
	sum(PERIOD) SUM_PERIOD ,
	count(*) SUM_KOSU
  from 
  ts_heya_tinryo_his_sum
  where end_tinryo > 0
  and end_tinryo > 0
  and kansei_ymd is not null
  and senyu_m2 > 0
  and exclusion='0'
  and end_ymd_sum = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd')
  and tatemono_syubetu is not null
  group by 
    jushocd1,
    jushocd2,
	tatemono_syubetu,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd'),
	'4'
/
commit
/
