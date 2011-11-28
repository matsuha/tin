update
 	kantei.ts_seiyaku aa
 set
 	(
 			JUSHONM3
 	) = (
 		select
 			JUSHONM3
 		from
 			ju3 bb
 		where
             aa.jushocd1 = bb.jushocd1
           	and aa.jushocd2 = bb.jushocd2
        		and aa.jushocd3 = bb.jushocd3
 			and rownum = 1
 	)
/
commit
/
update
 	kantei.ts_seiyaku aa
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
 	kantei.ts_seiyaku aa
 set
 	(
 			JUSHONM
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
update
 	kantei.ts_seiyaku aa
 set
 	(
 			JUSHONM4
 	) = (
 		select
 			JUSHONM4
 		from
 			ju4 bb
 		where
             aa.jushocd1 = bb.jushocd1
           	and aa.jushocd2 = bb.jushocd2
        		and aa.jushocd3 = bb.jushocd3
        		and aa.jushocd4 = bb.jushocd4
 			and rownum = 1
 	)
/
commit
/
