update
 	ts_kusituritu_ju_bk aa
 set
 	(
 			JUSHONM2
 	) = (
 		select
 			JUSHONM2
 		from
 			ju2 bb
 		where
             aa.jushocd1 = bb.jushocd1
           	and aa.jushocd2 = bb.jushocd2
 			and rownum = 1
 	)
/
commit
/
update
 	ts_kusituritu_ju_bk aa
 set
 	(
 			JUSHONM1
 	) = (
 		select
 			JUSHONM
 		from
 			ju1 bb
 		where
             aa.jushocd1 = bb.jushocd1
 			and rownum = 1
 	)
/
commit
/
