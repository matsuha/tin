spool aftermap.lst
set time on
set timing on
set echo on
@define
prompt setubi for beranda 
@setubi
prompt create setubi_need_sum table 0
@sum_new_record_ignore.sql
@cr_ts_heya_need_sum.sql
prompt create needs_sum2
@ins_ts_setubi_needs_sum2.sql
prompt up_ju1-2 ts_kusituritu_ju_bk jushonm up
@up_ju_bk.sql
REM prompt set generic code
REM @up_gencd_for_ts_sum.sql
prompt aabsx aabsy and jushocd1-4 using new information 20110622
@uponflg 
exit
/
