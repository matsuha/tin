PROMPT UPDATE SUM USING TS_TATEMONO
update
	ts_heya_tinryo_his_sum aa
set
	(
			jushocd1,
			jushocd2,
			jushocd3,
			jushocd4,
			kansei_ymd,
			so_kaisu,
			so_kosu
	) = (
		select
			jushocd1,
			jushocd2,
			jushocd3,
			jushocd4,
			kansei_ymd,
			so_kaisu,
			so_kosu
		from
			apawk bb
		where
            aa.tatemono_cd = bb.tatemono_cd
			and bb.jushocd1 is not null
			and bb.jushocd2 is not null
			and rownum = 1
	)
/
commit
/
PROMPT UPDATE SUM USING TS_TATEMONO SO_KOSU
update
	ts_heya_tinryo_his_sum aa
set
	(
			so_kosu
	) = (
		select
			max(nvl(so_kosu,0))
		from
			apawk bb
		where
            aa.tatemono_cd = bb.tatemono_cd
	)
	where end_flg='0'
/
commit
/
PROMPT UPDATE SUM USING TS_HEYA
update
	ts_heya_tinryo_his_sum aa
set
	(
			senyu_m2,
			kai,
			heya_nm,
			hogaku_nm,
			KEIYAKU_KEITAI_KBN
	) = (
		select
			max(senyu_m2) senyu_m2,
			max(kai) kai,
			max(heya_nm) heya_nm,
			max(hogaku_nm) hogaku_nm,
			max(KEIYAKU_KEITAI_KBN) KEIYAKU_KEITAI_KBN
		from
			apawk bb
		where
            aa.tatemono_cd = bb.tatemono_cd
            and aa.roomno = bb.roomno
	)
/
commit
/
PROMPT UPDATE SUM USING TATEMONO_DTL
update
	ts_heya_tinryo_his_sum aa
set
	(
		EKI_TOHO_JIKAN1,
		EKI_NM1,
		EKI_CD1,
		EKI_TOHO_JIKAN2,
		EKI_NM2,
		EKI_CD2,
		EKI_TOHO_JIKAN3,
		EKI_NM3,
		EKI_CD3,
		AABSX,
		AABSY,
		JUSHO,
		JUSHO_NM,
		ENSEN_NM1,
		ENSEN_NM2,
		ENSEN_NM3,
			EKI_BUS_JIKAN1,
			EKI_BUSTEI_TOHO_JIKAN1,
			EKI_BUS_JIKAN2,
			EKI_BUSTEI_TOHO_JIKAN2 ,
			EKI_BUS_JIKAN3,
			EKI_BUSTEI_TOHO_JIKAN3,
			BUSTEI_TOHO_JIKAN1,
			BUSTEI_TOHO_JIKAN2,
			BUSTEI_TOHO_JIKAN3
	) = (
		select
			EKI_TOHO_JIKAN1,
			EKI_NM1,
			EKI_CD1,
			EKI_TOHO_JIKAN2,
			EKI_NM2,
			EKI_CD2,
			EKI_TOHO_JIKAN3,
			EKI_NM3,
			EKI_CD3,
			AABSX,
			AABSY,
			JUSHO,
			JUSHO_NM,
			ENSEN_NM1,
			ENSEN_NM2,
			ENSEN_NM3,
			EKI_BUS_JIKAN1,
			EKI_BUSTEI_TOHO_JIKAN1,
			EKI_BUS_JIKAN2,
			EKI_BUSTEI_TOHO_JIKAN2 ,
			EKI_BUS_JIKAN3,
			EKI_BUSTEI_TOHO_JIKAN3,
			BUSTEI_TOHO_JIKAN1,
			BUSTEI_TOHO_JIKAN2,
			BUSTEI_TOHO_JIKAN3
		from
			apawk bb
		where
            aa.tatemono_cd = bb.tatemono_cd
			and rownum = 1
	)
/
commit
/
PROMPT UPDATE SUM USING HEYA_DTL
update
	ts_heya_tinryo_his_sum aa
set
	(
		MADORI_DTL_NM1
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
		,MADORI_DTL_NM8
		,MADORI_DTL_JYOSU8
		,MADORI_DTL_NM9
		,MADORI_DTL_JYOSU9
		,MADORI_DTL_NM10
		,MADORI_DTL_JYOSU10
		,MADORI_DTL_NM11
		,MADORI_DTL_JYOSU11
		,MADORI_DTL_NM12
		,MADORI_DTL_JYOSU12
	) = (
		select
				MADORI_DTL_NM1
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
				,MADORI_DTL_NM8
				,MADORI_DTL_JYOSU8
				,MADORI_DTL_NM9
				,MADORI_DTL_JYOSU9
				,MADORI_DTL_NM10
				,MADORI_DTL_JYOSU10
				,MADORI_DTL_NM11
				,MADORI_DTL_JYOSU11
				,MADORI_DTL_NM12
				,MADORI_DTL_JYOSU12
		from
			apawk bb
		where
            aa.tatemono_cd = bb.tatemono_cd
            and aa.roomno = bb.roomno
			and rownum = 1
	)
/
commit
/
PROMPT UPDATE SUM USING HEYA_CYUSYA
update
	ts_heya_tinryo_his_sum aa
set
	(
		CYUSYAJO
		,CYUSYA_RYO
	) = (
		select
				CYUSYAJO
				,CYUSYA_RYO+ nvl(CYUSYA_RYO_ZEI,0)
		from
			apawk bb
		where
            aa.tatemono_cd = bb.tatemono_cd
            and aa.roomno = bb.roomno
			and rownum = 1
	)
/
commit
/
PROMPT UPDATE SUM USING HEYA_SETUBI
update
	ts_heya_tinryo_his_sum aa
set
	(
		SETUBI001
		,SETUBI002
		,SETUBI003
		,SETUBI004
		,SETUBI005
		,SETUBI006
		,SETUBI007
		,SETUBI008
		,SETUBI009
		,SETUBI010
		,SETUBI011
		,SETUBI012
		,SETUBI013
		,SETUBI014
		,SETUBI015
		,SETUBI016
		,SETUBI017
		,SETUBI018
		,SETUBI019
		,SETUBI020
		,SETUBI021
		,SETUBI022
		,SETUBI023
		,SETUBI024
		,SETUBI025
		,SETUBI026
		,SETUBI027
		,SETUBI028
		,SETUBI029
		,SETUBI030
		,SETUBI031
		,SETUBI032
		,SETUBI033
		,SETUBI034
		,SETUBI035
		,SETUBI036
		,SETUBI037
		,SETUBI038
		,SETUBI039
		,SETUBI040
		,SETUBI041
		,SETUBI042
		,SETUBI043
		,SETUBI044
		,SETUBI045
		,SETUBI046
		,SETUBI047
		,SETUBI048
		,SETUBI049
		,SETUBI050
		,SETUBI051
		,SETUBI052
		,SETUBI053
		,SETUBI054
		,SETUBI055
		,SETUBI056
		,SETUBI057
		,SETUBI058
		,SETUBI059
		,SETUBI060
		,SETUBI061
		,SETUBI062
		,SETUBI063
		,SETUBI064
		,SETUBI065
		,SETUBI066
		,SETUBI067
		,SETUBI068
		,SETUBI069
		,SETUBI070
		,SETUBI071
	) = (
		select
			MAX(SETUBI001)
			,MAX(SETUBI002)
			,MAX(SETUBI003)
			,MAX(SETUBI004)
			,MAX(SETUBI005)
			,MAX(SETUBI006)
			,MAX(SETUBI007)
			,MAX(SETUBI008)
			,MAX(SETUBI009)
			,MAX(SETUBI010)
			,MAX(SETUBI011)
			,MAX(SETUBI012)
			,MAX(SETUBI013)
			,MAX(SETUBI014)
			,MAX(SETUBI015)
			,MAX(SETUBI016)
			,MAX(SETUBI017)
			,MAX(SETUBI018)
			,MAX(SETUBI019)
			,MAX(SETUBI020)
			,MAX(SETUBI021)
			,MAX(SETUBI022)
			,MAX(SETUBI023)
			,MAX(SETUBI024)
			,MAX(SETUBI025)
			,MAX(SETUBI026)
			,MAX(SETUBI027)
			,MAX(SETUBI028)
			,MAX(SETUBI029)
			,MAX(SETUBI030)
			,MAX(SETUBI031)
			,MAX(SETUBI032)
			,MAX(SETUBI033)
			,MAX(SETUBI034)
			,MAX(SETUBI035)
			,MAX(SETUBI036)
			,MAX(SETUBI037)
			,MAX(SETUBI038)
			,MAX(SETUBI039)
			,MAX(SETUBI040)
			,MAX(SETUBI041)
			,MAX(SETUBI042)
			,MAX(SETUBI043)
			,MAX(SETUBI044)
			,MAX(SETUBI045)
			,MAX(SETUBI046)
			,MAX(SETUBI047)
			,MAX(SETUBI048)
			,MAX(SETUBI049)
			,MAX(SETUBI050)
			,MAX(SETUBI051)
			,MAX(SETUBI052)
			,MAX(SETUBI053)
			,MAX(SETUBI054)
			,MAX(SETUBI055)
			,MAX(SETUBI056)
			,MAX(SETUBI057)
			,MAX(SETUBI058)
			,MAX(SETUBI059)
			,MAX(SETUBI060)
			,MAX(SETUBI061)
			,MAX(SETUBI062)
			,MAX(SETUBI063)
			,MAX(SETUBI064)
			,MAX(SETUBI065)
			,MAX(SETUBI066)
			,MAX(SETUBI067)
			,MAX(SETUBI068)
			,MAX(SETUBI069)
			,MAX(SETUBI070)
			,MAX(SETUBI071)
		from
			apawk bb
		where
            aa.tatemono_cd = bb.tatemono_cd
            and aa.roomno = bb.roomno
	)
/
commit
/
