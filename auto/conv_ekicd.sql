REM update c21wk set eki_cd1
update c21wk aa
set
aa.eki_cd1 = (
select
maxekicd as ekicd
from
apaeki bb
where
aa.eki_nm1 = bb.ekinm
and aa.jushocd1 = bb.jushocd1
and rownum=1
)
where aa.eki_nm1 is not null
and aa.jushocd1 is not null
/
commit
/
update c21wk aa
set
aa.eki_cd2 = (
select
maxekicd as ekicd
from
apaeki bb
where
aa.eki_nm2 = bb.ekinm
and aa.jushocd1 = bb.jushocd1
and rownum=1
)
where aa.eki_nm2 is not null
and aa.jushocd1 is not null
/
commit
/
