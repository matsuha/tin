spool starts_mearge
REM C21 MERGE
update starts.ts_heya_tinryo_his_sum set kyokyu_cd='03'
/
commit
/
insert into kantei.ts_heya_tinryo_his_sum
select
*
from starts.ts_heya_tinryo_his_sum
where 
exclusion=0
and
(gtoiawase_no)
not in
(
select gtoiawase_no
from
kantei.ts_heya_tinryo_his_sum
where exclusion=0
)
/
