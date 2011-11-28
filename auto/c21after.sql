@define
delete from aftersum1
where kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd')
/
commit
/
insert into aftersum1
select 
kyokyu_ymd,jushocd1,jushonm,jushocd2,jushonm2,jushocd3,jushonm3,jushocd4,jushonm4,tatemono_syubetu,madori
,count(*) cnt
from ts_heya_tinryo_his_sum
where jushocd1 is not null
and eki_cd1 is not null
and eki_toho_jikan1 is not null
and end_ymd_sum > sysdate - 90
group by 
kyokyu_ymd,
jushocd1,jushonm,jushocd2,jushonm2,jushocd3,jushonm3,jushocd4,jushonm4,tatemono_syubetu,madori
/
commit
/
delete from aftersum2
where kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd')
/
commit
/
insert into aftersum2
select 
kyokyu_ymd,jushocd1,eki_cd1,eki_nm1,tatemono_syubetu,madori
,count(*) cnt
from ts_heya_tinryo_his_sum
where jushocd1 is not null
and eki_cd1 is not null
and eki_toho_jikan1 is not null
and end_ymd_sum > sysdate - 90
group by 
kyokyu_ymd,
jushocd1,eki_cd1,eki_nm1,tatemono_syubetu,madori
/
commit
/
