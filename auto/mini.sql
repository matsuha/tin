set timing on
set time on
set echo on
delete from ts_heya_tinryo_his_sum
where jushocd1 not in ('11','12','13','14','40','41','42','43','44','45')
/
commit
/
delete from ts_heya_tinryo_his_sum
where exclusion!='0'
/
commit
/
@delete_haisicd.sql
@make_eki_srch
@make_eki_srch2
