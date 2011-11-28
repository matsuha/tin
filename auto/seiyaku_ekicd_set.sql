update ts_seiyaku aa
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
exit
/
