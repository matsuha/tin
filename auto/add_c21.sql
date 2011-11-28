spool c21merge
REM C21 MERGE
update c21.ts_heya_tinryo_his_sum set kyokyu_cd='02'
/
commit
/
insert into kantei.ts_heya_tinryo_his_sum
select
*
from c21.ts_heya_tinryo_his_sum
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
commit
/
