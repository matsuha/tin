select tatemono_cd,toiawase_no
		from ts_tatemono
		where (tatemono_cd, nvl(so_kosu,0)) in 
				(
				select tatemono_cd,max(nvl(so_kosu,0)) so_kosu 
				from ts_tatemono
				where (tatemono_cd,toiawase_no) in
						(
						select 
								ts_heya_tinryo.tatemono_cd,
								ts_heya_tinryo.toiawase_no
								from 
								ts_heya_tinryo
								where 
								ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
								and ts_heya_tinryo.priority_select = '3'
								and ts_heya_tinryo.exclusion='0'
						)
				group by tatemono_cd
				)
/
