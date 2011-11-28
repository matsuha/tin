spool cr_idx.lst
REM
REM TS_TATEMONO_DTL
REM
drop index ts_tatemono_dtl_eki_nm1;
create index ts_tatemono_dtl_eki_nm1 on ts_tatemono_dtl(eki_nm1,eki_toho_jikan1);
drop index ts_tatemono_dtl_eki_nm2;
create index ts_tatemono_dtl_eki_nm2 on ts_tatemono_dtl(eki_nm2,eki_toho_jikan2);
drop index ts_tatemono_dtl_eki_nm3;
create index ts_tatemono_dtl_eki_nm3 on ts_tatemono_dtl(eki_nm3,eki_toho_jikan3);
drop index ts_tatemono_dtl_aabsx;
create index ts_tatemono_dtl_aabsx on ts_tatemono_dtl(aabsx);
drop index ts_tatemono_dtl_aabsy;
create index ts_tatemono_dtl_aabsy on ts_tatemono_dtl(aabsy);
REM
REM TS_TATEMONO
REM
drop index ts_tatemono_priority;
create index ts_tatemono_priority on ts_tatemono(priority);
drop index ts_tatemono_kansei_ymd;
create index ts_tatemono_kansei_ymd on ts_tatemono(kansei_ymd);
drop index ts_tatemono_ju1_ju2;
create index ts_tatemono_ju1_ju2 on ts_tatemono(jushocd2,jushocd1);
drop index ts_tatemono_tatemono_syubetu;
create index ts_tatemono_tatemono_syubetu on ts_tatemono(tatemono_syubetu);
drop index ts_tatemono_kozo_syubetu;
create index ts_tatemono_kozo_syubetu on ts_tatemono(kozo_syubetu);
REM
REM TS_HEYA
REM
drop index ts_heya_madori;
create index ts_heya_madori on ts_heya(madori);
drop index ts_heya_senyu_m2;
create index ts_heya_senyu_m2 on ts_heya(senyu_m2);
drop index ts_heya_kai;
create index ts_heya_kai on ts_heya(kai);
REM
REM TS_HEYA_TINRYO
REM
drop index ts_heya_tin_kyokyu_ymd;
create index ts_heya_tin_kyokyu_ymd on ts_heya_tinryo(kyokyu_ymd);
drop index ts_heya_tin_exclusion;
create index ts_heya_tin_exclusion on ts_heya_tinryo(exclusion);
drop index ts_heya_tin_priority;
create index ts_heya_tin_priority on ts_heya_tinryo(priority);
REM
REM TS_HEYA_TINRYO_HIS
REM
drop index ts_heya_his_start_flg;
create index ts_heya_his_start_flg on ts_heya_tinryo_his(start_flg);
drop index ts_heya_his_end_flg;
create index ts_heya_his_end_flg on ts_heya_tinryo_his(end_flg);
REM
REM TS_OWNER_TATEMONO EXEC KANTEI USER
REM
drop index ts_owner_tatemono_ju;
create index ts_owner_tatemono_ju on ts_owner_tatemono(jushocd1,jushocd2,jushocd3,jushocd4);
drop index ts_owner_t_syubetu;
create index ts_owner_syubetu on ts_owner_tatemono(tatemono_syubetu)
drop index ts_owner_kanrino;
create index ts_owner_kanrino on ts_owner_tatemono(kanrino)
drop index ts_owner_houjincd;
create index ts_owner_houjincd on ts_owner_tatemono(houjincd)
drop index ts_owner_ekinm;
create index ts_owner_ekinm on ts_owner_tatemono(eki_nm,EKI_TOHO_JIKAN)
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
REM ANALYZE
REM
analyze table ts_tatemono estimate statistics;
analyze table ts_tatemono_dtl estimate statistics;
analyze table ts_heya estimate statistics;
analyze table ts_heya_tinryo estimate statistics;
analyze table ts_heya_tinryo_his_sum estimate statistics;
analyze table ts_owner_tatemono estimate statistics;
