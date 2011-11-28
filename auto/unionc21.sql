spool unionc21.lst
set time on
set timing on
@define
@c21prev
prompt ADD C21 INTO TS_HEYA_TINRYO_HIS_SUM
@add_c21
prompt  add jushonm1-4 for ts_heya_tinryo_his_sum
@up_ju
prompt  remake ts_kusituritu_ju
@ju_rate
prompt remake ts_kusituritu_eki
@eki_rate
prompt EKINM CHANGE FOR TS_KUSITURITU_EKI
@update_ekinm
prompt for rental report 
@cons_chk
prompt for rental report 2
@add_check_val
prompt count check
@count
@c21after
exit
/
