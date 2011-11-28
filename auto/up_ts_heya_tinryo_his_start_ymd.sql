REM
REM =head1 NAME 
REM
REM up_ts_heya_tiryo_his_start_ymd.sql
REM
REM =head1 DESCRIPTION
REM 
REM 賃料履歴(TS_HEYA_TINRYO_HIS)の情報を更新する
REM
REM 今回、END_FLG=1（前回データ提供があったが、今回ない部屋）
REM の履歴情報の情報開始日START_YMDを求める
REM
REM 再スタートしている物件(一度END_FLG=1している物件）は、最大の再スタート日
REM (START_FLG=1のときのTS_HEYA_TINRYO_HIS.START_YMD)
REM が物件の空室スタートの日となる
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
REM 基本的には、最初のデータから再構築となる。
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
REM 
update
	ts_heya_tinryo_his aa
set
	aa.start_ymd = (
		select
			max(tinryo_his_ymd) as tinryo_his_ymd
		from
			ts_heya_tinryo_his bb
		where
                        aa.tatemono_cd = bb.tatemono_cd
                        and aa.roomno = bb.roomno
			and bb.tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
			and bb.start_flg = '1'
                group by 
                    tatemono_cd
                    , roomno
        ),
	aa.start_ymd_sum = (
		select
			max(tinryo_his_ymd) as tinryo_his_ymd
		from
			ts_heya_tinryo_his bb
		where
                        aa.tatemono_cd = bb.tatemono_cd
                        and aa.roomno = bb.roomno
			and bb.tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
			and bb.start_flg = '1'
                group by 
                    tatemono_cd
                    , roomno
        )
where
  tinryo_his_ymd = to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd') 
  and end_flg = '1'
  and exists (
    select 
      tatemono_cd
      , roomno
    from
      ts_heya_tinryo_his cc
    where
      tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
      and start_flg = '1'
      and aa.tatemono_cd = cc.tatemono_cd
      and aa.roomno = cc.roomno
  ) 
  and nvl(aa.start_ymd_sum, sysdate - 3650) < (
		select
			max(tinryo_his_ymd) as tinryo_his_ymd
		from
			ts_heya_tinryo_his dd
		where
                        aa.tatemono_cd = dd.tatemono_cd
                        and aa.roomno = dd.roomno
			and dd.tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
			and dd.start_flg = '1'
                group by 
                    tatemono_cd
                    , roomno
        )
/
