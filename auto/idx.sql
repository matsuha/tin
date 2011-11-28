drop index ts_heya_his_sum_exclusion;
drop index ts_heya_his_sum_end_flg;
drop index ts_sum_aabsx;
create index ts_sum_aabsx on ts_heya_tinryo_his_sum(aabsx);
drop index ts_sum_aabsy;
create index ts_sum_aabsy on ts_heya_tinryo_his_sum(aabsy);
drop index ts_sum_kansei_ymd;
create index ts_sum_kansei_ymd on ts_heya_tinryo_his_sum(kansei_ymd);
analyze table ts_heya_tinryo_his_sum estimate statistics;
