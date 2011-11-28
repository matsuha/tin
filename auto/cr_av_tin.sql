REM tatemono_syubetu_nm in ('
REM 'アパート', 'コーポ', 'ハイツ'
REM 'マンション'
REM 'タウンハウス', 'テラスハウス', '一戸建て'
REM 店舗付住宅
REM 貸家
REM 長屋
REM マンション
drop table ju1std
/
create table ju1std as
select jushocd1,jushocd2,tatemono_syubetu_nm,avg(tinryo/senyu_m2) m2tin, stddev(tinryo/senyu_m2) std, 
avg(tinryo/senyu_m2)+stddev(tinryo/senyu_m2)*3 out from apa0902
group by jushocd1,jushocd2,tatemono_syubetu_nm
/
