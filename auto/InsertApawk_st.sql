spool starts2apawk.log
set timing on
set time on
PROMPT KOZO_SYUBETU FUNCTION
update startsrom set kozo_syubetu='SRC(鉄骨鉄筋コンクリート)'
where kozo_syubetu like '%鉄骨鉄筋%'
/
update startsrom set kozo_syubetu='ALC'
where upper(to_single_byte(kozo_syubetu))  like '%ALC%'
/
update startsrom set kozo_syubetu='木造'
where kozo_syubetu like '%木造%'
/
update startsrom set kozo_syubetu='RC(鉄筋コンクリート造)'
where kozo_syubetu like '%鉄筋%'
and kozo_syubetu not like '%SRC%'
/
update startsrom set kozo_syubetu='PC(プレキャストコンクリート)'
where kozo_syubetu like '%プレキ%'
/
commit
/
update startsrom set kozo_syubetu=trim(kozo_syubetu)
/
commit
/
PROMPT JUSHO CONVERT FUNCTION FUNCTION
drop index ju_jushocd_dex
/
create index ju_jushocd_dex on startsrom(jusyo_nm)
/
update
 	startsrom aa
 set
 	(
 			jushocd1
 	) = (
 		select
 			lpad(jushocd1,2,'0')
 		from
 			jushocd_convert bb
 		where
            aa.jusyo_nm = bb.jusyo_nm
 			and rownum = 1
 	)
where jusyo_nm in (select jusyo_nm from jushocd_convert where jushocd4 is not null)
and jushocd4 is null
/
commit
/
update
 	startsrom aa
 set
 	(
 			jushocd2
 	) = (
 		select
 			lpad(jushocd2,3,'0')
 		from
 			jushocd_convert bb
 		where
            aa.jusyo_nm = bb.jusyo_nm
 			and rownum = 1
 	)
where jusyo_nm in (select jusyo_nm from jushocd_convert where jushocd4 is not null)
and jushocd4 is null
/
commit
/
update
 	startsrom aa
 set
 	(
 			jushocd3
 	) = (
 		select
 			lpad(jushocd3,3,'0')
 		from
 			jushocd_convert bb
 		where
            aa.jusyo_nm = bb.jusyo_nm
 			and rownum = 1
 	)
where jusyo_nm in (select jusyo_nm from jushocd_convert where jushocd4 is not null)
and jushocd4 is null
/
commit
/
update
 	startsrom aa
 set
 	(
 			jushocd4
 	) = (
 		select
 			lpad(jushocd4,3,'0')
 		from
 			jushocd_convert bb
 		where
            aa.jusyo_nm = bb.jusyo_nm
 			and rownum = 1
 	)
where jusyo_nm in (select jusyo_nm from jushocd_convert where jushocd4 is not null)
and jushocd4 is null
/
commit
/
update startsrom set jushocd
=
replace(
lpad(trim(jushocd1),2,'0')||
lpad(trim(jushocd2),3,'0')||
lpad(trim(jushocd3),3,'0')||
lpad(trim(jushocd4),3,'0')
,' ')
where jushocd4 is not null
/
commit
/
update startsrom set tatemono_cd=
jushocd||to_char(KANSEI_YMD,'YYYYMM')||
DECODE(KOZO_SYUBETU,
'木造',
'1',
'重量鉄骨造',
'2',
'鉄骨造',
'3',
'軽量鉄骨造',
'4',
'RC(鉄筋コンクリート造)',
'5',
'SRC(鉄骨鉄筋コンクリート)',
'6',
'PC(プレキャストコンクリート)',
'7',
'ALC',
'8',
NULL)
||
SUBSTRB(SO_KAISU,0,2)
/
commit
/
delete from startsrom
where trim(jushocd) is null
/
commit
/
update startsrom set heya_nm='1'
where tatemono_syubetu in
('一戸建て')
and roomno is null
/
commit
/
update startsrom set roomno=to_single_byte(heya_nm)
where roomno is null
/
commit
/
delete from startsrom
where senyu_m2 < 10
or  senyu_m2 > 300
/
commit
/
delete from startsrom
where KANSEI_YMD <= TO_DATE('19600101','YYYYMMDD') 
/
commit
/
update startsrom set kai='1'
where tatemono_syubetu in
('一戸建て','テラスハウス','タウンハウス')
and kai is null
/
commit
/
delete from startsrom
where roomno is null
/
delete from startsrom
where kai is null
or kai > 60
/
commit
/
prompt convert ekicd
create index st_ekicd1 on startsrom(eki_cd1);
create index st_ekicd2 on startsrom(eki_cd2);
create index st_eki_nm1 on startsrom(eki_nm1,jushocd1);
create index st_eki_nm2 on startsrom(eki_nm2,jushocd1);
@conv_ekicd_st.sql
@conv_ekicd_st_stdeki.sql
commit
/
delete from startsrom
where 
eki_cd1 < 1000000
or 
eki_cd2 < 1000000
/
commit
/
truncate table &&work_table_name
/
insert into &&work_table_name (
TATEMONO_CD,
MADORI_NM,
TOIAWASE_NO,
JUSHOCD1,
JUSHOCD2,
JUSHOCD3,
JUSHOCD4,
TATEMONO_SYUBETU_NM,
KOZO_SYUBETU_NM,
SO_KAISU,
SO_KOSU,
KANSEI_YMD,
KAI,
HOGAKU_NM,
SENYU_M2,
LOFT,
FURORINGU,
ALL_DENKA,
SYSTEM_KITCHEN,
YUKASHITA_SYUNO,
BALCONY,
VERANDA,
ELEVATOR,
DOKURITSU_SENMENDAI,
SHAMPOO_DRESSER,
BATH_TOILET_BETSU,
SENJO_BENZA,
SHITUNAI_SENTAKU_OKIBA,
REIDANBO,
CATV,
YOKUSHITSU_KANSOKI,
GAS_KITCHEN,
WALK_IN_CLOSET,
CLOSET,
AUTO_LOCK,
TV_INTERCOM,
TAKUHAI_BOX,
CHURINJO,
OIDAKI,
YUKA_DANBO,
HIKARI,
IH_COOKING_HEATER,
CYUSYAJO,
CYUSYA_RYO,
TINRYO,
KANRIHI,
KYOEKIHI,
EKI_NM1,
EKI_CD1,
ENSEN_NM1,
EKI_BUS_JIKAN1,
EKI_TOHO_JIKAN1,
EKI_NM2,
EKI_CD2,
ENSEN_NM2,
EKI_BUS_JIKAN2,
EKI_TOHO_JIKAN2,
ROOMNO,
HEYA_NM,
KEIYAKU_KEITAI_KBN,
KUSITU_CHK_YMD,
KITEN_TOUROKUYMD,
KYOKYU_YMD,
WORK1,
SETUBI_CNT
,MADORI_DTL_NM1
,MADORI_DTL_JYOSU1
,MADORI_DTL_NM2
,MADORI_DTL_JYOSU2
,MADORI_DTL_NM3
,MADORI_DTL_JYOSU3
,MADORI_DTL_NM4
,MADORI_DTL_JYOSU4
,MADORI_DTL_NM5
,MADORI_DTL_JYOSU5
,MADORI_DTL_NM6
,MADORI_DTL_JYOSU6
,MADORI_DTL_NM7
,MADORI_DTL_JYOSU7
,JUSYO_NM
,SIKIKIN
,SIKIKIN_TUKI_SU
,SYOKYAKUKIN
,SYOKYAKUKIN_TUKI_SU
,REIKIN
,REIKIN_TUKI_SU
,KOSINRYO
,KOSINRYO_TUKI_SU
)
select
TATEMONO_CD,
trim(MADORI_NM),
TOIAWASE_NO,
substrb(jushocd,0,2) JUSHOCD1,
substrb(jushocd,3,3) JUSHOCD2,
substrb(jushocd,6,3) JUSHOCD3,
substrb(jushocd,9,3) JUSHOCD4,
trim(TATEMONO_SYUBETU),
trim(KOZO_SYUBETU),
SO_KAISU,
SO_KOSU,
KANSEI_YMD,
KAI,
HOGAKU_NM,
SENYU_M2,
LOFT,
FURORINGU,
ALL_DENKA,
SYSTEM_KITCHEN,
YUKASHITA_SYUNO,
BALCONY,
VERANDA,
ELEVATOR,
DOKURITSU_SENMENDAI,
SHAMPOO_DRESSER,
BATH_TOILET_BETSU,
SENJO_BENZA,
SHITUNAI_SENTAKU_OKIBA,
REIDANBO,
CATV,
YOKUSHITSU_KANSOKI,
GAS_KITCHEN,
WALK_IN_CLOSET,
CLOSET,
AUTO_LOCK,
TV_INTERCOM,
TAKUHAI_BOX,
CHURINJO,
OIDAKI,
YUKA_DANBO,
HIKARI,
IH_COOKING_HEATER,
CYUSYAJO,
CYUSYA_RYO,
TINRYO,
KANRIHI,
KYOEKIHI,
EKI_NM1,
EKI_CD1,
ENSEN_NM1,
EKI_BUS_JIKAN1,
EKI_TOHO_JIKAN1,
EKI_NM2,
EKI_CD2,
ENSEN_NM2,
EKI_BUS_JIKAN2,
EKI_TOHO_JIKAN2,
ROOMNO,
HEYA_NM,
KEIYAKU_KEITAI_KBN,
KUSITU_CHK_YMD,
KITEN_TOUROKUYMD,
KYOKYU_YMD,
BUF006,
SETUBI_CNT
,MADORI_DTL_NM1
,MADORI_DTL_JYOSU1
,MADORI_DTL_NM2
,MADORI_DTL_JYOSU2
,MADORI_DTL_NM3
,MADORI_DTL_JYOSU3
,MADORI_DTL_NM4
,MADORI_DTL_JYOSU4
,MADORI_DTL_NM5
,MADORI_DTL_JYOSU5
,MADORI_DTL_NM6
,MADORI_DTL_JYOSU6
,MADORI_DTL_NM7
,MADORI_DTL_JYOSU7
,JUSYO_NM
,SIKIKIN
,SIKIKIN_TUKI_SU
,SYOKYAKUKIN
,SYOKYAKUKIN_TUKI_SU
,REIKIN
,REIKIN_TUKI_SU
,KOSINRYO
,KOSINRYO_TUKI_SU
FROM startsrom
/
exit
/
