set timing on
set time on
set echo on
delete from ts_heya_tinryo_his_sum
where exclusion!='0'
/
commit
/
@delete_haisicd.sql
commit
/
@make_eki_srch
@make_eki_srch2
commit
/
commit
/
