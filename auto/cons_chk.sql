@define
delete from ts_kusituritu_ju_bk
where kusitu_ym = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd')
and sflg = '0'
/
insert into ts_kusituritu_ju_bk
 (jushocd1,jushocd2,kusitu_ym,tatemono_syubetu,madori,end_flg,sflg,bosyu_sousu)
select 
    jushocd1,
    jushocd2,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd') kusitu_ym,
	tatemono_syubetu,
	madori,
	end_flg,
	'0' sflg,
    count(*) bosyu_sousu
  from 
  TS_HEYA_TINRYO_HIS_SUM
  WHERE end_ymd_sum = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd')
  AND JUSHOCD1 IS NOT NULL
  AND exclusion = '0'
  group by 
    jushocd1,
    jushocd2,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd'),
	tatemono_syubetu,
	madori,
	end_flg,
	'0'
/
commit
/
delete from ts_kusituritu_ju_bk
where kusitu_ym = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
and sflg = '1'
/
insert into ts_kusituritu_ju_bk
 (jushocd1,jushocd2,kusitu_ym,tatemono_syubetu,madori,end_flg,sflg,bosyu_sousu)
select 
    jushocd1,
    jushocd2,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
	tatemono_syubetu,
	madori,
	end_flg,
	'1' sflg,
    count(*) bosyu_sousu
  from 
  TS_HEYA_TINRYO_HIS_SUM
  WHERE end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
  AND JUSHOCD1 IS NOT NULL
  AND exclusion = '0'
  group by 
    jushocd1,
    jushocd2,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm'),
	tatemono_syubetu,
	madori,
	end_flg,
	'1'
/
commit
/
