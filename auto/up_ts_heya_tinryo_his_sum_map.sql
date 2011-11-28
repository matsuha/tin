REM
REM =head1 NAME 
REM
REM up_ts_heya_tinryo_his_sum_map.sql
REM
REM =head1 DESCRIPTION
REM 
REM TS_HEYA_TINRYO_HIS_SUMテーブルのみにデータを集中させ高速化することが狙い
REM
REM 事前にTS_TATEMONO_DTLに緯度経度およびAABSX,AABSYを設定しとく必要あり
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
REM 最新データを利用して何度でも更新可能である
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
spool up_ts_heya_tinryo_his_sum.lst
prompt absx up mae
select count(*) from ts_heya_tinryo_his_sum
where aabsx is null
/
create index idokeidodex on apaidokeido(jushocd1,jushocd2,jushocd3,jushocd4)
/
update
	ts_heya_tinryo_his_sum aa
set
	(
		AABSX,
		AABSY
	) = (
		select
			AABSX,
			AABSY
		from
			apaidokeido bb
		where
		    aa.jushocd1 = bb.jushocd1
		    and aa.jushocd2 = bb.jushocd2
		    and aa.jushocd3 = bb.jushocd3
		    and aa.jushocd4 = bb.jushocd4
			and
			bb.aabsx > 0
			and rownum = 1
)
/
commit
/
prompt absx up ato
select count(*) from ts_heya_tinryo_his_sum
where aabsx is null
/
exit
/
