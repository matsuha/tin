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
create index ts_tatemono_ju1_ju2 on ts_tatemono(jushocd1,jushocd2,jushocd3,jushocd4);
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
drop index ts_heya_priority;
create index ts_heya_priority on ts_heya(priority);
REM
REM TS_HEYA_TINRYO
REM
drop index ts_heya_tin_kyokyu_ymd;
create index ts_heya_tin_kyokyu_ymd on ts_heya_tinryo(kyokyu_ymd,exclusion);
drop index ts_heya_tin_priority;
create index ts_heya_tin_priority on ts_heya_tinryo(priority,exclusion);
drop index ts_heya_tin_priority_s;
create index ts_heya_tin_priority_s on ts_heya_tinryo(priority_select,exclusion);
drop index ts_heya_tin_toi;
create index ts_heya_tin_toi on ts_heya_tinryo(toiawase_no,tatemono_cd,roomno);
drop index ts_heya_tin_tate;
create index ts_heya_tin_tate on ts_heya_tinryo(tatemono_cd,roomno,kyokyu_ymd,tinryo);
REM
REM TS_HEYA_SETUBI
REM
drop index ts_heya_setubi_toi;
create index ts_heya_setubi_toi on ts_heya_setubi(toiawase_no,tatemono_cd,roomno);
drop index ts_heya_setubi_tate;
create index ts_heya_setubi_tate on ts_heya_setubi(tatemono_cd,roomno);
REM
REM TS_HEYA_TINRYO_HIS
REM
REM
drop index ts_heya_his_start_flg;
create index ts_heya_his_start_flg on ts_heya_tinryo_his(start_flg);
drop index ts_heya_his_end_flg;
create index ts_heya_his_end_flg on ts_heya_tinryo_his(end_flg);
