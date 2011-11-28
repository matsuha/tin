set timing on
set time on
set echo on
delete from ts_heya_tinryo_his_sum
where exclusion!='0'
/
commit
/
@up_gencd_for_ts_sum.sql
commit
/
@del_hai2.sql
@dust_col_c21.sql
commit
/
@make_eki_srch
@make_eki_srch2
commit
/
