REM
REM =head1 NAME 
REM
REM ju_rate.sql
REM
REM =head1 DESCRIPTION
REM 
REM TS_KUSITURITU_JU（空室率マスタ住所編）にデータを作成する
REM
REM 前月以前にデータ提供がスタートしている物件（部屋）であり、
REM 今月の最新データに情報が含まれるものを対象とする
REM （空室物件としてカウントする）
REM
REM 注意）問合せNOの関係で同一建物CDが複数存在するので、UNIQにして利用する
REM
REM 募集総数と総戸数SUM(TS_TATEMONO.KOSU)をカウントするため部屋単位の情報と建物単位の情報に分けてカウントする
REM 上記の情報をJOINして最終情報を得る
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
delete from ts_kusituritu_ju
where kusitu_ym = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
insert into ts_kusituritu_ju
 (jushocd1,jushonm1,kusitu_ym,bosyu_sousu,avg_tinryo)
select 
    jushocd1,
    jushonm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
    count(*) bosyu_sousu,
    round(avg((end_tinryo)+ nvl(END_KANRIHI,0)+ nvl(END_KYOEKIHI,0)) ,3) avg_tinryo
  from 
  TS_HEYA_TINRYO_HIS_SUM
  WHERE end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
  AND JUSHOCD1 IS NOT NULL
  and so_kosu > 0
  and end_tinryo > 0
  AND exclusion = '0'
  group by 
    jushocd1,
    jushonm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
commit
/
drop table ju1ju2;
create table ju1ju2
as
select 
			jushocd1,
			trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
			sum(so_kosu) so_kosu from (
				select  tatemono_cd,
						jushocd1,
						avg(so_kosu) so_kosu 
				from ts_heya_tinryo_his_sum
						where so_kosu > 0
  AND end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
						  and end_tinryo > 0
						  AND exclusion = '0'
				group by tatemono_cd,
						 jushocd1
				)
				group by jushocd1,
						 trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
create index ju1ju2dex1 on ju1ju2(jushocd1)
/
analyze table ju1ju2 estimate statistics;
analyze table ts_heya_tinryo_his_sum estimate statistics;
analyze table ts_kusituritu_ju estimate statistics;
update ts_kusituritu_ju aa
set
	(
	SO_KOSU_SOUSU
	) = 
	(
		select sum(ju1ju2.so_kosu) SO_KOSU_SOUSU from ju1ju2
		where ju1ju2.jushocd1 = aa.jushocd1
		and aa.kusitu_ym =  trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
	)
	where aa.kusitu_ym =  trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
commit
/
