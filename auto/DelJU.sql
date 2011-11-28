delete from &&WORK_TBL
where (jushocd1,jushocd2) in 
(
select jushocd1,jushocd2 from ju2
where haisiymd  > (select kyokyu_ymd - 365  from &&WORK_TBL where rownum = 1)
)
/
delete from  &&WORK_TBL
where (jushocd1,jushocd2,jushocd3) in 
(
select jushocd1,jushocd2,jushocd3 from ju3
where haisiymd  > (select kyokyu_ymd - 365  from &&WORK_TBL where rownum = 1)
)
/
delete from &&WORK_TBL
where (jushocd1,jushocd2,jushocd3,jushocd4) in 
(
select jushocd1,jushocd2,jushocd3,jushocd4 from ju4
where haisiymd > (select kyokyu_ymd - 365  from &&WORK_TBL where rownum = 1)
)
/
