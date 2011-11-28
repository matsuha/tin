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
delete from ts_kusituritu_eki
where kusitu_ym = trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm')
/
insert all into ts_kusituritu_eki
 (jushocd1,ekicd,ekinm,kusitu_ym,tatemono_syubetu,madori,bosyu_sousu,avg_tinryo)
values
 (jushocd1,ekicd,ekinm,kusitu_ym,tatemono_syubetu,madori,bosyu_sousu,avg_tinryo)
select 
    tat.jushocd1,
    tat_d.eki_cd1 ekicd,
    tat_d.eki_nm1 ekinm,
    trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm') kusitu_ym,
    tat.tatemono_syubetu,
    rom.madori,
    count(*) bosyu_sousu,
    round(avg(his_b.tinryo),3) avg_tinryo
  from 
    (
    select 
      tatemono_cd,
      roomno,
	  end_ymd_sum
    from 
      ts_heya_tinryo_his 
    where end_ymd_sum >= trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm') 
	and end_flg ='1'
    group by 
      tatemono_cd,
      roomno,
	  end_ymd_sum
    ) his_a, 
    (
    select 
      tatemono_cd,
      roomno,
	  end_ymd_sum,
      min(tinryo) tinryo
    from 
      ts_heya_tinryo_his 
    where end_ymd_sum >= trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm')
	and start_flg !='1'
	and end_flg !='1'
	and tinryo > 0
    group by 
      tatemono_cd,
      roomno,
	  end_ymd_sum
    ) his_b, 
	(select tatemono_cd,jushocd1,tatemono_syubetu
			from ts_tatemono where tatemono_syubetu is not null
			group by tatemono_cd,jushocd1,tatemono_syubetu
    ) tat,
	(select distinct(tatemono_cd) tatemono_cd,roomno,madori
			from ts_heya
			where madori is not null
    ) rom,
	(select distinct(tatemono_cd) tatemono_cd,eki_cd1,eki_nm1
			from ts_tatemono_dtl
			where eki_cd1 is not null
			and eki_nm1 is not null
    ) tat_d
  where tat.tatemono_cd = his_b.tatemono_cd
  and tat.tatemono_cd = tat_d.tatemono_cd
  and tat.tatemono_cd = rom.tatemono_cd
  and his_b.tatemono_cd = tat_d.tatemono_cd
  and his_a.tatemono_cd = tat_d.tatemono_cd
  and his_b.roomno = rom.roomno
  and his_a.roomno = rom.roomno
  and his_b.tatemono_cd = his_a.tatemono_cd
  and his_b.roomno = his_a.roomno
  and his_b.end_ymd_sum = his_a.end_ymd_sum
  and rom.tatemono_cd = tat_d.tatemono_cd
  and his_b.tatemono_cd = rom.tatemono_cd
  and his_a.tatemono_cd = rom.tatemono_cd
  group by 
    tat.jushocd1,
    tat_d.eki_cd1,
    tat_d.eki_nm1,
    trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm'),
    tat.tatemono_syubetu,
    rom.madori
/
