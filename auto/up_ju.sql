REM
REM =head1 NAME 
REM
REM up_ju.sql
REM
REM =head1 DESCRIPTION
REM 
REM TS_HEYA_TINRYO_HIS_SUMのjushocd1-3 JUSHONM1-3を更新する
REM
REM 事前にJU1-3をＩＭＰＯＲＴしておく必要がある。
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
REM 最新住所データを利用して何度も再更新可能
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
drop index ju_sum_dex
/
create index ju_sum_dex on ts_heya_tinryo_his_sum(jushocd1,jushocd2,jushocd3,jushocd4)
/
update
 	ts_seiyaku aa
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
 	ts_seiyaku aa
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
 	ts_seiyaku aa
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
 	ts_seiyaku aa
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
update
 	ts_heya_tinryo_his_sum aa
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
 	ts_heya_tinryo_his_sum aa
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
 	ts_heya_tinryo_his_sum aa
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
 	ts_heya_tinryo_his_sum aa
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
PROMPT UP_JUSHO_NM_FOR_JUSHO
DROP TABLE JUSHODUM
/
CREATE TABLE JUSHODUM
AS
select distinct trim(ju1.jushonm)||trim(ju2.jushonm2) short,ju2.jushocd1,ju2.jushocd2
                from ju1,ju2
                where
                ju2.jushocd1 = ju1.jushocd1
/
CREATE OR REPLACE FUNCTION ISNUMERIC(DATA IN VARCHAR2) RETURN CHAR 
IS
I_DATA NUMBER;
BEGIN
I_DATA := TO_NUMBER(DATA);
RETURN 'TRUE';
EXCEPTION
WHEN VALUE_ERROR THEN
RETURN 'FALSE';
END;
/
update ts_seiyaku set jusho= trim(jushonm3)||trim(jushonm4)||'丁目'
where isnumeric(trim(to_single_byte(jushonm4))) ='TRUE'
and jushonm4 is not null
/
commit
/
update ts_seiyaku set jusho= trim(jushonm3)||trim(jushonm4)
where isnumeric(trim(to_single_byte(jushonm4))) ='TRUE'
and jushonm4 is null
/
commit
/
update ts_seiyaku set jusho= trim(jushonm3)||trim(jushonm4)
where isnumeric(trim(to_single_byte(jushonm4))) ='FALSE'
/
commit
/
update ts_heya_tinryo_his_sum set jusho= trim(jushonm3)||trim(jushonm4)||'丁目'
where isnumeric(trim(to_single_byte(jushonm4))) ='TRUE'
and jushonm4 is not null
/
commit
/
update ts_heya_tinryo_his_sum set jusho= trim(jushonm3)||trim(jushonm4)
where isnumeric(trim(to_single_byte(jushonm4))) ='TRUE'
and jushonm4 is null
/
commit
/
update ts_heya_tinryo_his_sum set jusho= trim(jushonm3)||trim(jushonm4)
where isnumeric(trim(to_single_byte(jushonm4))) ='FALSE'
/
commit
/
