spool make_eki_srch2
set time on
insert into ts_eki_srch
select jushocd1,eki_nm1 ekinm,eki_cd1 ekicd,toiawase_no,tatemono_cd,roomno,2 end_flg
from ts_seiyaku
where exclusion ='0'
and eki_cd1 is not null
/
commit
/
