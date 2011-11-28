spool bat.lst
set time on
set echo on
set timing on
@define
prompt ins_ts_tatemono.sql
@ins_ts_tatemono
prompt ins_ts_heya.sql
@ins_ts_heya
prompt del_ts_heya_setubi.sql
@del_ts_heya_setubi
prompt ins_ts_heya_setubi.sql
@ins_ts_heya_setubi
prompt del_ts_tatemono_dtl.sql
@del_ts_tatemono_dtl.sql
prompt ins_ts_tatemono_dtl
@ins_ts_tatemono_dtl
prompt del_ts_heya_chyusya.sql
@del_ts_heya_cyusya.sql
prompt ins_ts_heya_cyusya.sql
@ins_ts_heya_cyusya
prompt del_ts_heya_dtl.sql
@del_ts_heya_dtl.sql
prompt ins_ts_heya_dtl.sql
@ins_ts_heya_dtl
prompt down_ts_heya_tinryo
@find_down_ts_heya_tinryo
prompt ins_ts_heya_tinryo_hist_start.sql
@ins_ts_heya_tinryo_hist_start.sql
prompt ins_ts_heya_tinryo_hist_end.sql
@ins_ts_heya_tinryo_hist_end
prompt mv_ts_heya_tinryo_bk
@mv_ts_heya_tinryo_bk
prompt ins_ts_heya_tinryo.sql
@ins_ts_heya_tinryo
prompt up_heya_tinryo.sql
@up_heya_tinryo
prompt  up_heya_tinryo_priority_select_init.sql
@up_heya_tinryo_priority_select_init
prompt  set_priority_select_f1.sql
@set_priority_select_f1
prompt  del_dup_priority_select_record.sql 12
@del_dup_priority_select_record.sql
prompt ins_ts_heya_tinryo_hist.sql 11
@ins_ts_heya_tinryo_hist.sql
prompt up_ts_heya_tinryo_hist.sql  10
@up_ts_heya_tinryo_hist.sql
prompt  up_ts_heya_tinryo_set_priority.sql 9
@up_ts_heya_tinryo_set_priority.sql
prompt up_ts_heya_tinryo_his_start_ymd2.sql 8
@up_ts_heya_tinryo_his_start_ymd2.sql
@up_ts_heya_tinryo_his_start_ymd2_sum.sql
prompt up_ts_heya_tinryo_his_start_ymd.sql 7
@up_ts_heya_tinryo_his_start_ymd.sql
@up_ts_heya_tinryo_his_start_ymd_sum.sql
prompt apply ekinm rule for zenrin eki search
@update_ekinm
prompt generate ts_heya_tinryo_his -> ts_heya_tinryo_his_sum
@ju_hist_sum
prompt set generic code here
@up_gencd_for_ts_sum.sql
prompt if need c21 or starts data here marge
prompt  add jushonm1-4 for ts_heya_tinryo_his_sum
@up_ju
prompt  make ts_kusituritu_ju
@ju_rate
prompt make ts_kusituritu_eki
@eki_rate
prompt for rental report 
@cons_chk
prompt for rental report 2
@add_check_val
prompt count check
@count
exit
/
