REM
REM TS_HEYA_TINRYO_HIS_SUM
REM
drop index ts_sum_aabsx;
create index ts_sum_aabsx on ts_heya_tinryo_his_sum(aabsx,aabsy,exclusion);
drop index ts_sum_aabsy;
create index ts_sum_aabsy on ts_heya_tinryo_his_sum(aabsy,aabsx,exclusion);
drop index ts_heya_his_sum_end_tinryo;
create index ts_heya_his_sum_end_tinryo on ts_heya_tinryo_his_sum(end_tinryo);
drop index ts_heya_his_sum_exclusion;
create index ts_heya_his_sum_exclusion on ts_heya_tinryo_his_sum(exclusion);
drop index ts_heya_his_sum_kyokyu_ymd;
create index ts_heya_his_sum_kyokyu_ymd on ts_heya_tinryo_his_sum(kyokyu_ymd);
drop index ts_heya_his_sum_end_ymd_sum;
create index ts_heya_his_sum_end_ymd_sum on ts_heya_tinryo_his_sum(end_ymd_sum);
drop index ts_heya_his_sum_end_flg;
create index ts_heya_his_sum_end_flg on ts_heya_tinryo_his_sum(end_flg);
drop index ts_sum_tatemono_syubetu;
create index ts_sum_tatemono_syubetu on ts_heya_tinryo_his_sum(tatemono_syubetu);
drop index ts_sum_kozo_syubetu;
create index ts_sum_kozo_syubetu on ts_heya_tinryo_his_sum(kozo_syubetu);
drop index ts_sum_kai;
create index ts_sum_kai on ts_heya_tinryo_his_sum(kai);
drop index ts_sum_ekinm1;
create index ts_sum_ekinm1 on ts_heya_tinryo_his_sum(eki_nm1,eki_toho_jikan1);
drop index ts_sum_ekinm2;
create index ts_sum_ekinm2 on ts_heya_tinryo_his_sum(eki_nm2,eki_toho_jikan2);
drop index ts_sum_ekinm3;
create index ts_sum_ekinm3 on ts_heya_tinryo_his_sum(eki_nm3,eki_toho_jikan3);
drop index ts_sum_kansei_ymd;
create index ts_sum_kansei_ymd on ts_heya_tinryo_his_sum(kansei_ymd);
drop index ts_sum_senyu_m2;
create index ts_sum_senyu_m2 on ts_heya_tinryo_his_sum(senyu_m2);
drop index ts_sum_madori;
create index ts_sum_madori on ts_heya_tinryo_his_sum(madori,madori_nm);
REM
drop index ts_sum_ekicd1;
create index ts_sum_ekicd1 on ts_heya_tinryo_his_sum(eki_cd1);
drop index ts_sum_ekicd2;
create index ts_sum_ekicd2 on ts_heya_tinryo_his_sum(eki_cd2);
drop index ts_sum_ekicd3;
create index ts_sum_ekicd3 on ts_heya_tinryo_his_sum(eki_cd3);
alter table ts_heya_tinryo_his_sum parallel 4;
