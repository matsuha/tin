update
 	ts_heya_tinryo_his_sum aa
 set
 	(
 			jushocd1
 			,jushocd2
 			,jushocd3
 			,jushocd4
 	) = (
 		select
 			new1
 			,new2
 			,new3
 			,new4
 		from
 			jcb bb
 		where
             aa.jushocd1 = bb.old1
           	and aa.jushocd2 = bb.old2
        		and aa.jushocd3 = bb.old3
        		and aa.jushocd4 = bb.old4
 			and rownum = 1
 	)
where
(jushocd1,jushocd2,jushocd3,jushocd4)
in
(
select old1,old2,old3,old4 from jcb
where (sikouymd is null or sikouymd < sysdate -30)
)
/
