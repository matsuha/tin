select bosyu.jushocd1,
bosyu.jushocd2,
bosyu.jusho_nm,
bosyu.cnt bosyu_su,
sumi.cnt sumi_su,
round(sumi.cnt/bosyu.cnt*100) ritu
FROM
(select
			SUM.JUSHOCD1,
			SUM.JUSHOCD2,
			SUM.JUSHO_NM,
			COUNT(*) CNT
			FROM TS_HEYA_TINRYO_HIS_SUM SUM
			where end_ymd_sum > sysdate -60
			and end_flg = '0'
			group by
					SUM.JUSHOCD1,
					SUM.JUSHOCD2,
					SUM.JUSHO_NM
					) bosyu,
(select
			SUM.JUSHOCD1,
			SUM.JUSHOCD2,
			SUM.JUSHO_NM,
			COUNT(*) CNT
			FROM TS_HEYA_TINRYO_HIS_SUM SUM
			where end_ymd_sum > sysdate -60
			and end_flg = '1'
			group by
					SUM.JUSHOCD1,
					SUM.JUSHOCD2,
					SUM.JUSHO_NM
) sumi
where sumi.jushocd1= bosyu.jushocd1
and sumi.jushocd2 =  bosyu.jushocd2
and sumi.jusho_nm = bosyu.jusho_nm
/
