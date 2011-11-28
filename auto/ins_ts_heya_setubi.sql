REM
REM =head1 NAME 
REM
REM ins_ts_heya_setubi.sql
REM
REM =head1 DESCRIPTION
REM 
REM 部屋設備マスタ(TS_HEYA_SETUBI)の情報をインサートする
REM
REM     PRIMARY KEY(TATEMONO_CD,TOIAWASE_NO,KYOKYU_CD,ROOMNO)
REM
REM ワークテーブルに入っているデータのみ入れ替える。
REM 該当レコードは事前に削除されている
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
REM del_ts_heya_setubi.sqlを事前に実行することで、再実行可能である。
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
INSERT INTO TS_HEYA_SETUBI (
	     TATEMONO_CD
	    ,TOIAWASE_NO
	    ,KYOKYU_CD
	    ,ROOMNO
	,SETUBI001
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
    ,INYOSUI_SETUBI_SYURUI
    ,INYOSUI_SETUBI
    ,DENKI_SETUBI
    ,GAS_SETUBI_SYURUI
    ,GAS_SETUBI
    ,HAISUI_SETUBI
    ,SETUBI_BIKO
    ,SETUBI_CNT
)
SELECT
		     distinct(TATEMONO_CD) tatemono_cd
	    ,TOIAWASE_NO
		    ,'01' KYOKYU_CD
		    ,ROOMNO
		    ,SYSTEM_KITCHEN
		    ,TAIMEN_KITCHEN
		    ,IH_COOKING_HEATER
		    ,DENKI_KONRO
		    ,GAS_KITCHEN
		    ,GAS_KONRO_SECCHI
		    ,DISPOSER
		    ,REIZOKO
		    ,KYUTO_DENKI
		    ,KYUTO_GAS
		    ,OIDAKI
		    ,YOKUSHITSU_KANSOKI
		    ,SHOWER
		    ,YOKUSHITSU_TV
		    ,SHAMPOO_DRESSER
		    ,SHITUNAI_SENTAKU_OKIBA
		    ,DOKURITSU_SENMENDAI
		    ,BATH_TOILET_BETSU
		    ,DANBO_BENZA
		    ,SENJO_BENZA
		    ,DEMADO
		    ,TV_INTERCOM
		    ,INTERCOM
		    ,TAKUHAI_BOX
		    ,MAILBOX
		    ,REIDANBO
		    ,REIBO
		    ,DANBO
		    ,YUKA_DANBO
		    ,GAS_HEATER
		    ,TOYU_HEATER
		    ,TOYU_BOIRA
		    ,FURORINGU
		    ,BED
		    ,SHOMEI
		    ,WALK_IN_CLOSET
		    ,CLOSET
		    ,YUKASHITA_SYUNO
		    ,TRUNK_ROOM
		    ,OSHIRE
		    ,ALL_DENKA
		    ,DESIGNER
		    ,ELEVATOR
		    ,BIKE_OKIBA
		    ,CHURINJO
		    ,SYUKAIJO
		    ,GOMI_SYUSEKIJO
		    ,KYOYO_NIWA
		    ,AUTO_LOCK
		    ,TAIO_24H
		    ,SENYO_NIWA
		    ,BARRIER_FREE
		    ,CONCRETE_GAISO
		    ,CONCRETE_NAISO
		    ,SUN_ROOM
		    ,MAISONETTE
		    ,LOFT 
		    ,KADOBEYA
		    ,BALCONY
		    ,VERANDA
		    ,CENTRAL_HEATING
		    ,BS_ANTENNA
		    ,CS_ANTENNA
		    ,CATV
		    ,INTERNET_TAIO
		    ,HIKARI
		    ,YUSEN
		    ,OKUNAI_CHUSYAJO
		    ,CHUSYAJO_HEATING
		    ,CHUSYA_NIDAI
		    ,ZISO_CHUSYAJO
		    ,INYOSUI_SETUBI_SYURUI
		    ,INYOSUI_SETUBI
		    ,DENKI_SETUBI
		    ,GAS_SETUBI_SYURUI
		    ,GAS_SETUBI
		    ,HAISUI_SETUBI
		    ,'' SETUBI_BIKO
		    ,SETUBI_CNT
		    FROM apawk
		where (tatemono_cd,toiawase_no,roomno) not in (select tatemono_cd,toiawase_no,roomno from ts_heya_setubi
		where apawk.tatemono_cd = ts_heya_setubi.tatemono_cd
		and apawk.roomno = ts_heya_setubi.roomno
		and apawk.toiawase_no = ts_heya_setubi.toiawase_no
		)
/
