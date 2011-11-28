spool cr_idx.lst
REM
REM TS_TATEMONO_DTL
REM
REM drop index ts_tatemono_dtl_eki_nm1;
REM create index ts_tatemono_dtl_eki_nm1 on ts_tatemono_dtl(eki_nm1,eki_toho_jikan1);
REM drop index ts_tatemono_dtl_eki_nm2;
REM create index ts_tatemono_dtl_eki_nm2 on ts_tatemono_dtl(eki_nm2,eki_toho_jikan2);
REM drop index ts_tatemono_dtl_eki_nm3;
REM create index ts_tatemono_dtl_eki_nm3 on ts_tatemono_dtl(eki_nm3,eki_toho_jikan3);
REM drop index ts_tatemono_dtl_aabsx;
REM create index ts_tatemono_dtl_aabsx on ts_tatemono_dtl(aabsx);
REM drop index ts_tatemono_dtl_aabsy;
REM create index ts_tatemono_dtl_aabsy on ts_tatemono_dtl(aabsy);
REM
REM TS_TATEMONO
REM
REM drop index ts_tatemono_priority;
REM create index ts_tatemono_priority on ts_tatemono(priority);
REM drop index ts_tatemono_kansei_ymd;
REM create index ts_tatemono_kansei_ymd on ts_tatemono(kansei_ymd);
REM drop index ts_tatemono_ju1_ju2;
REM create index ts_tatemono_ju1_ju2 on ts_tatemono(jushocd2,jushocd1);
REM drop index ts_tatemono_tatemono_syubetu;
REM create index ts_tatemono_tatemono_syubetu on ts_tatemono(tatemono_syubetu);
REM drop index ts_tatemono_kozo_syubetu;
REM create index ts_tatemono_kozo_syubetu on ts_tatemono(kozo_syubetu);
REM
REM TS_HEYA
REM
REM drop index ts_heya_madori;
REM create index ts_heya_madori on ts_heya(madori);
REM drop index ts_heya_senyu_m2;
REM create index ts_heya_senyu_m2 on ts_heya(senyu_m2);
REM drop index ts_heya_kai;
REM create index ts_heya_kai on ts_heya(kai);
REM drop index ts_heya_priority;
REM create index ts_heya_priority on ts_heya(priority);
REM
REM TS_HEYA_TINRYO
REM
REM drop index ts_heya_tin_kyokyu_ymd;
REM create index ts_heya_tin_kyokyu_ymd on ts_heya_tinryo(kyokyu_ymd);
REM drop index ts_heya_tin_exclusion;
REM create index ts_heya_tin_exclusion on ts_heya_tinryo(exclusion);
REM drop index ts_heya_tin_priority;
REM create index ts_heya_tin_priority on ts_heya_tinryo(priority);
REM
REM TS_HEYA_TINRYO_HIS
REM
REM
REM drop index ts_heya_his_start_flg;
REM create index ts_heya_his_start_flg on ts_heya_tinryo_his(start_flg);
REM drop index ts_heya_his_end_flg;
REM create index ts_heya_his_end_flg on ts_heya_tinryo_his(end_flg);
REM
REM TS_SEIYAKU
REM
drop index ts_sei_aabsx;
create index ts_sei_aabsx on ts_seiyaku(aabsx,aabsy,tatemono_syubetu,madori);
drop index ts_sei_aabsy;
create index ts_sei_aabsy on ts_seiyaku(aabsy,aabsx,exclusion);
drop index ts_heya_his_sei_end_tinryo;
create index ts_heya_his_sei_end_tinryo on ts_seiyaku(end_tinryo);
drop index ts_heya_his_sei_exclusion;
create index ts_heya_his_sei_exclusion on ts_seiyaku(exclusion);
drop index ts_heya_his_sei_kyokyu_ymd;
create index ts_heya_his_sei_kyokyu_ymd on ts_seiyaku(kyokyu_ymd);
drop index ts_heya_send_ymd_sei;
create index ts_heya_send_ymd_sei on ts_seiyaku(end_ymd_sum);
REM drop index ts_heya_send_flg;
REM create unique index ts_heya_send_flg on ts_seiyaku(end_flg,tatemono_cd,roomno);
drop index ts_sei_tatemono_syubetu;
create index ts_sei_tatemono_syubetu on ts_seiyaku(tatemono_syubetu);
drop index ts_sei_kozo_syubetu;
create index ts_sei_kozo_syubetu on ts_seiyaku(kozo_syubetu);
drop index ts_sei_kai;
create index ts_sei_kai on ts_seiyaku(kai);
drop index ts_sei_ekinm1;
create index ts_sei_ekinm1 on ts_seiyaku(eki_nm1,eki_toho_jikan1);
drop index ts_sei_ekinm2;
create index ts_sei_ekinm2 on ts_seiyaku(eki_nm2,eki_toho_jikan2);
drop index ts_sei_ekinm3;
create index ts_sei_ekinm3 on ts_seiyaku(eki_nm3,eki_toho_jikan3);
drop index ts_sei_kansei_ymd;
create index ts_sei_kansei_ymd on ts_seiyaku(kansei_ymd);
drop index ts_sei_senyu_m2;
create index ts_sei_senyu_m2 on ts_seiyaku(senyu_m2);
drop index ts_sei_madori;
create index ts_sei_madori on ts_seiyaku(madori,madori_nm);
drop index ts_need_sei_ekicd1;
CREATE INDEX TS_NEED_SEI_EKICD1 ON ts_seiyaku(EKI_CD1);
drop index TS_NEED_SEI_EKICD2;
CREATE INDEX TS_NEED_SEI_EKICD2 ON ts_seiyaku(EKI_CD2);
drop index TS_NEED_SEI_EKICD3;
CREATE INDEX TS_NEED_SEI_EKICD3 ON ts_seiyaku(EKI_CD3);
REM
REM TS_HEYA_TINRYO_HIS_SUM
REM
drop index ts_sum_aabsx;
create index ts_sum_aabsx on ts_heya_tinryo_his_sum(aabsx,aabsy,tatemono_syubetu,madori);
drop index ts_sum_aabsy;
create index ts_sum_aabsy on ts_heya_tinryo_his_sum(aabsy,aabsx,exclusion);
drop index ts_heya_his_sum_end_tinryo;
create index ts_heya_his_sum_end_tinryo on ts_heya_tinryo_his_sum(end_tinryo);
drop index ts_heya_his_sum_exclusion;
create index ts_heya_his_sum_exclusion on ts_heya_tinryo_his_sum(exclusion);
drop index ts_heya_his_sum_kyokyu_ymd;
create index ts_heya_his_sum_kyokyu_ymd on ts_heya_tinryo_his_sum(kyokyu_ymd);
drop index ts_heya_send_ymd_sum;
create index ts_heya_send_ymd_sum on ts_heya_tinryo_his_sum(end_ymd_sum);
REM drop index ts_heya_send_flg;
REM create unique index ts_heya_send_flg on ts_heya_tinryo_his_sum(end_flg,tatemono_cd,roomno);
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
drop index TS_NEED_SUM_EKICD1;
CREATE INDEX TS_NEED_SUM_EKICD1 ON ts_heya_tinryo_his_sum(EKI_CD1);
drop index TS_NEED_SUM_EKICD2;
CREATE INDEX TS_NEED_SUM_EKICD2 ON ts_heya_tinryo_his_sum(EKI_CD2);
drop index TS_NEED_SUM_EKICD3;
CREATE INDEX TS_NEED_SUM_EKICD3 ON ts_heya_tinryo_his_sum(EKI_CD3);
REM
REM TS_SETUBI_NEEDS_SUM
REM
drop index TS_NEED_SUM_JUSHOCD;
CREATE INDEX TS_NEED_SUM_JUSHOCD ON TS_SETUBI_NEEDS_SUM2(JUSHOCD1);
drop index TS_NEED_SUM_TSYUBETU;
CREATE INDEX TS_NEED_SUM_TSYUBETU ON TS_SETUBI_NEEDS_SUM2(TATEMONO_SYUBETU);
REM
REM TS_KUSITURITU_JU_BK TO CHECK
REM
drop index ts_bk_ju1_ju2;
create index ts_bk_ju1_ju2 on ts_kusituritu_ju_bk(jushocd1,jushocd2);
REM
REM TS_EKI_SRCH TO CHECK
REM
drop index ts_eki_srch_ekinm;
create index ts_eki_srch_ekinm on ts_eki_srch(ekinm,jushocd1);
drop index ts_eki_srch_ekicd;
create index ts_eki_srch_ekicd on ts_eki_srch(ekicd);
REM
REM ANALYZE
REM
REM analyze table ts_tatemono estimate statistics;
REM analyze table ts_tatemono_dtl estimate statistics;
REM analyze table ts_heya estimate statistics;
REM analyze table ts_heya_tinryo estimate statistics;
analyze table ts_kusituritu_ju estimate statistics;
analyze table ts_kusituritu_eki estimate statistics;
analyze table ts_setubi_needs_sum2 estimate statistics;

