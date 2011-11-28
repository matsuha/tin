update ts_kusituritu_eki set bflg='',tflg='',sflg=''
/
commit
/
set termout off
drop index ekicddex1;
create index ekicddex1 on ts_kusituritu_eki(ekicd);
drop index ekicddex2;
create index ekicddex2 on ts_kusituritu_eki(ekinm);
drop index ekicddex1bk;
create index ekicddex1bk on ts_kusituritu_eki_bk(ekicd);
drop index ekicddex2bk;
create index ekicddex2bk on ts_kusituritu_eki_bk(ekinm);
set termout on
update ts_kusituritu_eki aa
set bflg = '2'
where (aa.jushocd1,aa.ekicd,aa.ekinm,tatemono_syubetu,madori)
in
(select
aa.jushocd1,aa.ekicd,aa.ekinm,
tatemono_syubetu,
madori
from ts_kusituritu_eki_bk bk
where
aa.jushocd1 = bk.jushocd1
and aa.ekicd = bk.ekicd
and aa.ekinm = bk.ekinm
and aa.tatemono_syubetu = bk.tatemono_syubetu
and aa.madori = bk.madori
and 
(
abs(nvl(bk.bosyu_sousu,0) / nvl(aa.bosyu_sousu,1)) > 1.5 
or 
(abs(nvl(bk.bosyu_sousu,0) / nvl(aa.bosyu_sousu,1)) < 0.75)
)
and aa.bosyu_sousu > 10
and bk.kusitu_ym =  to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd')
)
/
update ts_kusituritu_eki aa
set tflg = '2'
where (aa.jushocd1,aa.ekicd,aa.ekinm,tatemono_syubetu,madori)
in
(select
aa.jushocd1,aa.ekicd,aa.ekinm
,tatemono_syubetu
,madori
from ts_kusituritu_eki_bk bk
where
aa.jushocd1 = bk.jushocd1
and aa.ekicd = bk.ekicd
and aa.ekinm = bk.ekinm
and aa.tatemono_syubetu = bk.tatemono_syubetu
and aa.madori = bk.madori
and 
(
abs(nvl(bk.avg_tinryo,0) / nvl(aa.avg_tinryo,1)) > 1.5
or 
abs(nvl(bk.avg_tinryo,0) / nvl(aa.avg_tinryo,1)) < 0.75
)
and aa.bosyu_sousu > 10
and bk.kusitu_ym =  to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd')
)
/
update ts_kusituritu_eki aa
 set bflg = '1'
 where
  aa.bosyu_sousu <= 10
/
commit
/
