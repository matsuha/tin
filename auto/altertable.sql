alter table ts_heya_tinryo_his_sum
add
(
JUSHOCD1 CHAR(2),
JUSHOCD2 CHAR(3),
JUSHOCD3 CHAR(3),
JUSHOCD4 CHAR(3),
JUSHO VARCHAR2(128),
JUSHONM VARCHAR2(8),
JUSHONM2 VARCHAR2(24),
JUSHONM3 VARCHAR2(24),
JUSHONM4 VARCHAR2(36),
AABSX NUMBER(8),
AABSY NUMBER(8),
MADORI_NM VARCHAR2(10),
MADORI VARCHAR2(10),
TATEMONO_SYUBETU VARCHAR2(64),
SENYU_M2 NUMBER,
KANSEI_YMD DATE
)
/
alter table ts_heya_tinryo_his_sum
add
(
EKI_TOHO_JIKAN1        NUMBER(4)
,EKI_NM1                VARCHAR2(64)
,EKI_TOHO_JIKAN2 NUMBER(4)  
,EKI_NM2                VARCHAR2(64)
,EKI_TOHO_JIKAN3        NUMBER(4)
,EKI_NM3                VARCHAR2(64)
,KOZO_SYUBETU        VARCHAR2(64)
,KAI                NUMBER(2)
)
/
alter table ts_heya
add
(
PRIORITY                   NUMBER         DEFAULT 0 NOT NULL
)
/
alter table ts_heya_tinryo_his_sum
add
(
    SO_KAISU            NUMBER(2)
    ,SO_KOSU             NUMBER(4)
    ,JUSHO_NM               VARCHAR2(128)
    ,ENSEN_NM1              VARCHAR2(64)
    ,ENSEN_NM2              VARCHAR2(64)
    ,ENSEN_NM3              VARCHAR2(64)
    ,HEYA_NM            VARCHAR2(120)
    ,HOGAKU_NM          VARCHAR2(4)
    ,MADORI_DTL_NM1     VARCHAR2(10)
    ,MADORI_DTL_JYOSU1  NUMBER
    ,MADORI_DTL_NM2     VARCHAR2(10)
    ,MADORI_DTL_JYOSU2  NUMBER
    ,MADORI_DTL_NM3     VARCHAR2(10)
    ,MADORI_DTL_JYOSU3  NUMBER
    ,MADORI_DTL_NM4     VARCHAR2(10)
    ,MADORI_DTL_JYOSU4  NUMBER
    ,MADORI_DTL_NM5     VARCHAR2(10)
    ,MADORI_DTL_JYOSU5  NUMBER
    ,MADORI_DTL_NM6     VARCHAR2(10)
    ,MADORI_DTL_JYOSU6  NUMBER
    ,MADORI_DTL_NM7     VARCHAR2(10)
    ,MADORI_DTL_JYOSU7  NUMBER
    ,MADORI_DTL_NM8     VARCHAR2(10)
    ,MADORI_DTL_JYOSU8  NUMBER
    ,MADORI_DTL_NM9     VARCHAR2(10)
    ,MADORI_DTL_JYOSU9  NUMBER
    ,MADORI_DTL_NM10    VARCHAR2(10)
    ,MADORI_DTL_JYOSU10 NUMBER
    ,MADORI_DTL_NM11    VARCHAR2(10)
    ,MADORI_DTL_JYOSU11 NUMBER
    ,MADORI_DTL_NM12    VARCHAR2(10)
    ,MADORI_DTL_JYOSU12 NUMBER
    ,CYUSYAJO                     VARCHAR2(10)
    ,CYUSYA_RYO                   NUMBER(8)
    ,SETUBI001             CHAR(1)
    ,SETUBI002             CHAR(1)
    ,SETUBI003             CHAR(1)
    ,SETUBI004             CHAR(1)
    ,SETUBI005             CHAR(1)
    ,SETUBI006             CHAR(1)
    ,SETUBI007             CHAR(1)
    ,SETUBI008             CHAR(1)
    ,SETUBI009             CHAR(1)
    ,SETUBI010             CHAR(1)
    ,SETUBI011             CHAR(1)
    ,SETUBI012             CHAR(1)
    ,SETUBI013             CHAR(1)
    ,SETUBI014             CHAR(1)
    ,SETUBI015             CHAR(1)
    ,SETUBI016             CHAR(1)
    ,SETUBI017             CHAR(1)
    ,SETUBI018             CHAR(1)
    ,SETUBI019             CHAR(1)
    ,SETUBI020             CHAR(1)
    ,SETUBI021             CHAR(1)
    ,SETUBI022             CHAR(1)
    ,SETUBI023             CHAR(1)
    ,SETUBI024             CHAR(1)
    ,SETUBI025             CHAR(1)
    ,SETUBI026             CHAR(1)
    ,SETUBI027             CHAR(1)
    ,SETUBI028             CHAR(1)
    ,SETUBI029             CHAR(1)
    ,SETUBI030             CHAR(1)
    ,SETUBI031             CHAR(1)
    ,SETUBI032             CHAR(1)
    ,SETUBI033             CHAR(1)
    ,SETUBI034             CHAR(1)
    ,SETUBI035             CHAR(1)
    ,SETUBI036             CHAR(1)
    ,SETUBI037             CHAR(1)
    ,SETUBI038             CHAR(1)
    ,SETUBI039             CHAR(1)
    ,SETUBI040             CHAR(1)
    ,SETUBI041             CHAR(1)
    ,SETUBI042             CHAR(1)
    ,SETUBI043             CHAR(1)
    ,SETUBI044             CHAR(1)
    ,SETUBI045             CHAR(1)
    ,SETUBI046             CHAR(1)
    ,SETUBI047             CHAR(1)
    ,SETUBI048             CHAR(1)
    ,SETUBI049             CHAR(1)
    ,SETUBI050             CHAR(1)
    ,SETUBI051             CHAR(1)
    ,SETUBI052             CHAR(1)
    ,SETUBI053             CHAR(1)
    ,SETUBI054             CHAR(1)
    ,SETUBI055             CHAR(1)
    ,SETUBI056             CHAR(1)
    ,SETUBI057             CHAR(1)
    ,SETUBI058             CHAR(1)
    ,SETUBI059             CHAR(1)
    ,SETUBI060             CHAR(1)
    ,SETUBI061             CHAR(1)
    ,SETUBI062             CHAR(1)
    ,SETUBI063             CHAR(1)
    ,SETUBI064             CHAR(1)
    ,SETUBI065             CHAR(1)
    ,SETUBI066             CHAR(1)
    ,SETUBI067             CHAR(1)
    ,SETUBI068             CHAR(1)
    ,SETUBI069             CHAR(1)
    ,SETUBI070             CHAR(1)
    ,SETUBI071             CHAR(1)
)
/
alter table ts_heya_tinryo_his_sum
add
(
	TOIAWASE_NO         VARCHAR2(20) 
)
/
alter table ts_heya_tinryo_his_sum
add
(
	KYOKYU_CD                  VARCHAR2(2)
)
/
alter table ts_heya_tinryo_his_sum
add
(
	SIKIKIN                  NUMBER
)
/
alter table ts_heya_tinryo_his_sum
add
(
		EKI_CD1                VARCHAR2(5),
		EKI_CD2                VARCHAR2(5),
		EKI_CD3                VARCHAR2(5)
)
/
alter table TS_KUSITURITU_JU
add
(
		BFLG                VARCHAR2(1),
		SFLG                VARCHAR2(1),
		TFLG                VARCHAR2(1)
)
/
alter table TS_KUSITURITU_EKI
add
(
		BFLG                VARCHAR2(1),
		SFLG                VARCHAR2(1),
		TFLG                VARCHAR2(1)
)
/
alter table ts_heya_tinryo_his_sum
add
(
    EKI_BUS_JIKAN1         NUMBER(4)
    ,EKI_BUSTEI_TOHO_JIKAN1 NUMBER(4)
    ,EKI_BUS_JIKAN2         NUMBER(4)
    ,EKI_BUSTEI_TOHO_JIKAN2 NUMBER(4)
    ,EKI_BUS_JIKAN3         NUMBER(4)
    ,EKI_BUSTEI_TOHO_JIKAN3 NUMBER(4)
    ,BUSTEI_TOHO_JIKAN1     NUMBER(4)
    ,BUSTEI_TOHO_JIKAN2     NUMBER(4)
    ,BUSTEI_TOHO_JIKAN3     NUMBER(4)
)
/
alter table ts_heya_tinryo_his_sum
add
(
	START_SIKIKIN                  NUMBER
	,END_SIKIKIN                  NUMBER
	,START_REIKIN                  NUMBER
	,END_REIKIN                  NUMBER
	,START_SYOKYAKUKIN                NUMBER
	,END_SYOKYAKUKIN                NUMBER
	,START_SYOKYAKUKIN_TUKI_SU        NUMBER
	,END_SYOKYAKUKIN_TUKI_SU        NUMBER
	,START_SYOKYAKUKIN_RITU           NUMBER
	,END_SYOKYAKUKIN_RITU           NUMBER
)
/
alter table ts_heya_tinryo_his
add
(
	SYOKYAKUKIN_RITU           NUMBER
	,REIKIN           NUMBER
	,SIKIKIN           NUMBER
)
/
alter table ts_heya_tinryo_his_sum
add
(
  KEIYAKU_KEITAI_KBN CHAR(1)
)
/
alter table ts_kusituritu_ju_bk
add
(
		SUM_SENYU_M2 NUMBER,
		SUM_TINRYO NUMBER,
		SUM_KANSEI_YMD NUMBER,
		SUM_PERIOD NUMBER,
		SUM_KOSU NUMBER
)
/
alter table ts_heya_tinryo_his_sum
add
(
  RESIDENCE_DATE DATE,
  GTATEMONO_CD            VARCHAR2(1000),
  GTOIAWASE_NO            VARCHAR2(1000)
)
/
alter table ts_seiyaku
add
(
  RESIDENCE_DATE DATE,
  GTATEMONO_CD            VARCHAR2(1000),
  GTOIAWASE_NO            VARCHAR2(1000)
)
/
alter table TS_HEYA add (noflg varchar(1) default '1' not null);
alter table TS_HEYA_CYUSYA add (noflg varchar(1) default '1' not null);
alter table TS_HEYA_DTL add (noflg varchar(1) default '1' not null);
alter table TS_HEYA_SETUBI add (noflg varchar(1) default '1' not null);
alter table TS_TATEMONO add (noflg varchar(1) default '1' not null);
alter table TS_TATEMONO_DTL add (noflg varchar(1) default '1' not null);
