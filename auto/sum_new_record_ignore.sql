update ts_heya_tinryo_his_sum sum
set exclusion = '2'
where sum.start_ymd_sum =  trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'dd')
/
