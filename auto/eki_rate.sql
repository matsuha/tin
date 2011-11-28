REM
REM =head1 NAME 
REM
REM eki_rate.sql
REM
REM =head1 DESCRIPTION
REM 
REM TS_KUSITURITU_EKI（空室率マスタ 駅編）にデータを作成する
REM
REM 前月以前にデータ提供がスタートしている物件（部屋）であり、
REM 今月の最新データに情報が含まれるものを対象とする
REM （空室物件としてカウントする）
REM
REM 注意）問合せNOの関係で同一建物CDが複数存在するので、UNIQにして利用する
REM 総戸数は仕様にないので、ペンディング。
REM
REM =head1 HISTORY
REM
REM =over 4
REM
REM =item 2010/10/25 M.TAKIUCHI CREATED
REM
REM =item 2010/10/25 M.TAKIUCHI COMMENT ADD FOR POD
REM
REM =back
REM
REM =head1 Trouble Shooting
REM
REM 何度実行しても同じ結果になる。
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
REM
delete from ts_kusituritu_eki
where kusitu_ym = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
insert into ts_kusituritu_eki
 (ekicd,ekinm,kusitu_ym,tatemono_syubetu,madori,bosyu_sousu,avg_tinryo)
select ekicd,ekinm,kusitu_ym,tatemono_syubetu,madori,count(*) bosyu_sousu,round(sum(sum_tinryo)/count(*)) avg_tinryo
from (
select 
	toiawase_no,
	eki_cd1 ekicd,
    eki_nm1 ekinm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
    tatemono_syubetu,
    madori,
    round(end_tinryo+ nvl(END_KANRIHI,0)+ nvl(END_KYOEKIHI,0) ,3) sum_tinryo
  from TS_HEYA_TINRYO_HIS_SUM
  where end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
  and eki_nm1 is not null
  and eki_cd1 is not null
  and end_tinryo > 0
  AND exclusion = '0'
union
select 
	toiawase_no,
	eki_cd2 ekicd,
    eki_nm2 ekinm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
    tatemono_syubetu,
    madori,
    round(end_tinryo+ nvl(END_KANRIHI,0)+ nvl(END_KYOEKIHI,0) ,3) sum_tinryo
  from TS_HEYA_TINRYO_HIS_SUM
  where end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
  and eki_nm2 is not null
  and eki_cd2 is not null
  and end_tinryo > 0
  AND exclusion = '0'
union
select 
	toiawase_no,
	eki_cd3 ekicd,
    eki_nm3 ekinm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
    tatemono_syubetu,
    madori,
    round(end_tinryo+ nvl(END_KANRIHI,0)+ nvl(END_KYOEKIHI,0) ,3) sum_tinryo
  from TS_HEYA_TINRYO_HIS_SUM
  where end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
  and eki_nm3 is not null
  and end_tinryo > 0
  and eki_cd3 is not null
  AND exclusion = '0'
)
group by 
	ekicd,
    ekinm,
    kusitu_ym,
    tatemono_syubetu,
    madori
/
