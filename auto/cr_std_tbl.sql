create table ju1std as
select jushocd1,jushocd2,avg(tinryo/senyu_m2) m2tin, stddev(tinryo/senyu_m2) std,
avg(tinryo/senyu_m2)+stddev(tinryo/senyu_m2)*3 out from apa0902
where
tatemono_syubetu_nm in (
'アパート', 'コーポ', 'ハイツ'
)
group by jushocd1,jushocd2
/
