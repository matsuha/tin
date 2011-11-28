spool make_eki_srch1
set time on
set echo on
drop table ts_eki_srch
/
create table ts_eki_srch
as
select jushocd1,eki_nm1 ekinm,eki_cd1 ekicd,toiawase_no,tatemono_cd,roomno,end_flg
from ts_heya_tinryo_his_sum
where exclusion !='1'
and eki_cd1 is not null
/
insert into ts_eki_srch
select jushocd1,eki_nm2 ekinm,eki_cd2 ekicd,toiawase_no,tatemono_cd,roomno,end_flg
from ts_heya_tinryo_his_sum
where exclusion !='1'
and eki_cd2 is not null
/
insert into ts_eki_srch
select jushocd1,eki_nm3 ekinm,eki_cd3 ekicd,toiawase_no,tatemono_cd,roomno,end_flg
from ts_heya_tinryo_his_sum
where exclusion !='1'
and eki_cd3 is not null
/
commit
/
