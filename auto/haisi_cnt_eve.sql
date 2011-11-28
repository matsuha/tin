select count(*)
from
(
select distinct jushocd1,jushocd2,jushocd3,jushocd4,jushonm2,jushonm3,aabsx,aabsy from ts_eve.ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3,jushocd4) in
(
select jushocd1,jushocd2,jushocd3,jushocd4 from kantei.ju4
where haisiymd < sysdate 
) 
)haisi,
(
select distinct jushocd1,jushocd2,jushocd3,jushocd4,jushonm2,jushonm3,aabsx,aabsy from ts_eve.ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3,jushocd4) not in
(
select jushocd1,jushocd2,jushocd3,jushocd4 from kantei.ju4
where haisiymd < sysdate 
)
) now
where
haisi.aabsx = now.aabsx
and
haisi.aabsy = now.aabsy
order by haisi.jushocd1,haisi.jushocd2
/
select  count(*)
from
(
select distinct jushocd1,jushocd2,jushocd3,jushocd4,jushonm2,jushonm3,aabsx,aabsy from ts_eve.ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3) in
(
select jushocd1,jushocd2,jushocd3 from kantei.ju3
where haisiymd < sysdate 
) 
)haisi,
(
select distinct jushocd1,jushocd2,jushocd3,jushocd4,jushonm2,jushonm3,aabsx,aabsy from ts_eve.ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3) not in
(
select jushocd1,jushocd2,jushocd3 from kantei.ju3
where haisiymd < sysdate 
)
) now
where
haisi.aabsx = now.aabsx
and
haisi.aabsy = now.aabsy
order by haisi.jushocd1,haisi.jushocd2
/
