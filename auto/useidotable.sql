REM spool idokeido.lst
REM set time on
REM set timing on
REM drop index tatdex2;
REM drop index dtldex1;
REM drop index idodex1;
REM create index idodex1 on apaidokeido(jushocd1,jushocd2,jushocd3,jushocd4);
REM create index dtldex1 on ts_tatemono_dtl(tatemono_cd,toiawase_no);
REM create index tatdex2 on ts_tatemono(tatemono_cd,toiawase_no);
REM update
REM     ts_tatemono_dtl dtl
REM set
REM     (
REM             aabsx,
REM             aabsy,
REM             ido,
REM             keido
REM     ) = (
REM         select
REM             max(ido.aabsx),
REM             max(ido.aabsy),
REM             max(ido.ido),
REM             max(ido.keido)
REM         from
REM             apaidokeido ido, ts_tatemono tat
REM         where
REM             ido.jushocd1 = tat.jushocd1
REM 	    and
REM             ido.jushocd2 = tat.jushocd2
REM 	    and
REM             ido.jushocd3 = tat.jushocd3
REM 	    and
REM             ido.jushocd4 = tat.jushocd4
REM 	    and
REM             dtl.tatemono_cd = tat.tatemono_cd
REM 	    and
REM             dtl.toiawase_no = tat.toiawase_no
REM     )
REM /
REM drop index tatdex1;
REM drop index tatdex2;
REM drop index dtldex1;
REM drop index idodex1;
REM commit
REM /
exit
/
