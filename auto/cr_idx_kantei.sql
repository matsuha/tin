REM
REM TS_OWNER_TATEMONO EXEC KANTEI USER
REM
drop index ts_owner_tatemono_ju;
create index ts_owner_tatemono_ju on ts_owner_tatemono(jushocd1,jushocd2,jushocd3,jushocd4);
drop index ts_owner_t_syubetu;
create index ts_owner_t_syubetu on ts_owner_tatemono(tatemono_syubetu);
drop index ts_owner_kanrino;
create index ts_owner_kanrino on ts_owner_tatemono(kanrino);
drop index ts_owner_houjincd;
create index ts_owner_houjincd on ts_owner_tatemono(houjincd);
drop index ts_owner_ekinm;
create index ts_owner_ekinm on ts_owner_tatemono(eki_nm,EKI_TOHO_JIKAN);
REM
analyze table ts_owner_tatemono estimate statistics;
