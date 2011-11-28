spool delete_haisicd2
drop table junow;
drop table juhaisi;
create table juhaisi
as
select distinct jushocd1,jushocd2,jushocd3,jushocd4,aabsx,aabsy from ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3,jushocd4) in
(
select jushocd1,jushocd2,jushocd3,jushocd4 from ju4
where haisiymd < sysdate 
) 
/
select count(*) from juhaisi;
create table junow
as
select distinct jushocd1,jushocd2,jushocd3,jushocd4,aabsx,aabsy from ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3,jushocd4) not in
(
select jushocd1,jushocd2,jushocd3,jushocd4 from ju4
where haisiymd < sysdate 
)
/
select count(*) from junow;
delete from ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3,jushocd4)
in
(
select haisi.jushocd1,haisi.jushocd2,haisi.jushocd3,haisi.jushocd4
from juhaisi haisi, junow now
where
haisi.aabsx = now.aabsx
and
haisi.aabsy = now.aabsy
)
/
commit
/
drop table junow;
drop table juhaisi;
create table juhaisi
as
select distinct jushocd1,jushocd2,jushocd3,jushocd4,aabsx,aabsy from ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3) in
(
select jushocd1,jushocd2,jushocd3 from ju3
where haisiymd < sysdate 
) 
/
select count(*) from juhaisi;
create table junow
as
select distinct jushocd1,jushocd2,jushocd3,jushocd4,aabsx,aabsy from ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3) not in
(
select jushocd1,jushocd2,jushocd3 from ju3
where haisiymd < sysdate 
)
/
select count(*) from junow;
delete from ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3,jushocd4)
in
(
select haisi.jushocd1,haisi.jushocd2,haisi.jushocd3,haisi.jushocd4
from
juhaisi haisi,junow now
where
haisi.aabsx = now.aabsx
and
haisi.aabsy = now.aabsy
)
/
commit;
drop table junow;
drop table juhaisi;
create table juhaisi
as
select distinct jushocd1,jushocd2,jushocd3,jushocd4,aabsx,aabsy from ts_heya_tinryo_his_sum
where (jushocd1,jushocd2) in
(
select jushocd1,jushocd2 from ju2
where haisiymd < sysdate 
) 
/
select count(*) from juhaisi;
create table junow
as
select distinct jushocd1,jushocd2,jushocd3,jushocd4,aabsx,aabsy from ts_heya_tinryo_his_sum
where (jushocd1,jushocd2) not in
(
select jushocd1,jushocd2 from ju2
where haisiymd < sysdate 
)
/
select count(*) from junow;
delete from ts_heya_tinryo_his_sum
where (jushocd1,jushocd2,jushocd3,jushocd4)
in
(
select haisi.jushocd1,haisi.jushocd2,haisi.jushocd3,haisi.jushocd4
from juhaisi haisi, junow now
where
haisi.aabsx = now.aabsx
and
haisi.aabsy = now.aabsy
)
/
commit
/
