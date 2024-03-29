CREATE TABLE "TS_SEIYAKU" 
(	"TATEMONO_CD" VARCHAR2(20),
	"ROOMNO" VARCHAR2(10),
	"END_FLG" CHAR(1) DEFAULT 0,
	"START_YMD_SUM" DATE, 
	"START_TINRYO" NUMBER(8,0), 
	"START_KANRIHI" NUMBER(8,0), 
	"START_KYOEKIHI" NUMBER(8,0), 
	"START_SIKIKIN_TUKI_SU" NUMBER, 
	"START_REIKIN_TUKI_SU" NUMBER, 
	"END_YMD_SUM" DATE, 
	"END_TINRYO" NUMBER(8,0), 
	"END_KANRIHI" NUMBER(8,0), 
	"END_KYOEKIHI" NUMBER(8,0), 
	"END_SIKIKIN_TUKI_SU" NUMBER, 
	"END_REIKIN_TUKI_SU" NUMBER, 
	"KYOKYU_YMD" DATE, 
	"PERIOD" NUMBER, 
	"EXCLUSION" CHAR(1) DEFAULT 0, 
	"TINSYAKU_KEITAI_KBN" VARCHAR2(10), 
	"SYOKYAKU" VARCHAR2(6), 
	"SYOKYAKUKIN" NUMBER(8,0), 
	"SYOKYAKUKIN_TUKI_SU" NUMBER, 
	"KOSINRYO" NUMBER(8,0), 
	"KOSINRYO_TUKI_SU" NUMBER, 
	"TOUROKUYMD" DATE DEFAULT SYSDATE, 
	"KOUSINYMD" DATE DEFAULT SYSDATE, 
	"JUSHOCD1" CHAR(2), 
	"JUSHOCD2" CHAR(3), 
	"JUSHOCD3" CHAR(3), 
	"JUSHOCD4" CHAR(3), 
	"JUSHO" VARCHAR2(128), 
	"JUSHONM" VARCHAR2(8), 
	"JUSHONM2" VARCHAR2(24), 
	"JUSHONM3" VARCHAR2(24), 
	"JUSHONM4" VARCHAR2(36), 
	"AABSX" NUMBER(8,0), 
	"AABSY" NUMBER(8,0), 
	"MADORI_NM" VARCHAR2(10), 
	"MADORI" VARCHAR2(10), 
	"TATEMONO_SYUBETU" VARCHAR2(64), 
	"SENYU_M2" NUMBER, 
	"KANSEI_YMD" DATE, 
	"EKI_TOHO_JIKAN1" NUMBER(4,0), 
	"EKI_NM1" VARCHAR2(64), 
	"EKI_TOHO_JIKAN2" NUMBER(4,0), 
	"EKI_NM2" VARCHAR2(64), 
	"EKI_TOHO_JIKAN3" NUMBER(4,0), 
	"EKI_NM3" VARCHAR2(64), 
	"KOZO_SYUBETU" VARCHAR2(64), 
	"KAI" NUMBER(2,0), 
	"SO_KAISU" NUMBER(2,0), 
	"SO_KOSU" NUMBER(4,0), 
	"JUSHO_NM" VARCHAR2(128), 
	"ENSEN_NM1" VARCHAR2(64), 
	"ENSEN_NM2" VARCHAR2(64), 
	"ENSEN_NM3" VARCHAR2(64), 
	"HEYA_NM" VARCHAR2(120), 
	"HOGAKU_NM" VARCHAR2(4), 
	"MADORI_DTL_NM1" VARCHAR2(10), 
	"MADORI_DTL_JYOSU1" NUMBER, 
	"MADORI_DTL_NM2" VARCHAR2(10), 
	"MADORI_DTL_JYOSU2" NUMBER, 
	"MADORI_DTL_NM3" VARCHAR2(10), 
	"MADORI_DTL_JYOSU3" NUMBER, 
	"MADORI_DTL_NM4" VARCHAR2(10), 
	"MADORI_DTL_JYOSU4" NUMBER, 
	"MADORI_DTL_NM5" VARCHAR2(10), 
	"MADORI_DTL_JYOSU5" NUMBER, 
	"MADORI_DTL_NM6" VARCHAR2(10), 
	"MADORI_DTL_JYOSU6" NUMBER, 
	"MADORI_DTL_NM7" VARCHAR2(10), 
	"MADORI_DTL_JYOSU7" NUMBER, 
	"MADORI_DTL_NM8" VARCHAR2(10), 
	"MADORI_DTL_JYOSU8" NUMBER, 
	"MADORI_DTL_NM9" VARCHAR2(10), 
	"MADORI_DTL_JYOSU9" NUMBER, 
	"MADORI_DTL_NM10" VARCHAR2(10), 
	"MADORI_DTL_JYOSU10" NUMBER, 
	"MADORI_DTL_NM11" VARCHAR2(10), 
	"MADORI_DTL_JYOSU11" NUMBER, 
	"MADORI_DTL_NM12" VARCHAR2(10), 
	"MADORI_DTL_JYOSU12" NUMBER, 
	"CYUSYAJO" VARCHAR2(10), 
	"CYUSYA_RYO" NUMBER(8,0), 
	"SETUBI001" CHAR(1), 
	"SETUBI002" CHAR(1), 
	"SETUBI003" CHAR(1), 
	"SETUBI004" CHAR(1), 
	"SETUBI005" CHAR(1), 
	"SETUBI006" CHAR(1), 
	"SETUBI007" CHAR(1), 
	"SETUBI008" CHAR(1), 
	"SETUBI009" CHAR(1), 
	"SETUBI010" CHAR(1), 
	"SETUBI011" CHAR(1), 
	"SETUBI012" CHAR(1), 
	"SETUBI013" CHAR(1), 
	"SETUBI014" CHAR(1), 
	"SETUBI015" CHAR(1), 
	"SETUBI016" CHAR(1), 
	"SETUBI017" CHAR(1), 
	"SETUBI018" CHAR(1), 
	"SETUBI019" CHAR(1), 
	"SETUBI020" CHAR(1), 
	"SETUBI021" CHAR(1), 
	"SETUBI022" CHAR(1), 
	"SETUBI023" CHAR(1), 
	"SETUBI024" CHAR(1), 
	"SETUBI025" CHAR(1), 
	"SETUBI026" CHAR(1), 
	"SETUBI027" CHAR(1), 
	"SETUBI028" CHAR(1), 
	"SETUBI029" CHAR(1), 
	"SETUBI030" CHAR(1), 
	"SETUBI031" CHAR(1), 
	"SETUBI032" CHAR(1), 
	"SETUBI033" CHAR(1), 
	"SETUBI034" CHAR(1), 
	"SETUBI035" CHAR(1), 
	"SETUBI036" CHAR(1), 
	"SETUBI037" CHAR(1), 
	"SETUBI038" CHAR(1), 
	"SETUBI039" CHAR(1), 
	"SETUBI040" CHAR(1), 
	"SETUBI041" CHAR(1), 
	"SETUBI042" CHAR(1), 
	"SETUBI043" CHAR(1), 
	"SETUBI044" CHAR(1), 
	"SETUBI045" CHAR(1), 
	"SETUBI046" CHAR(1), 
	"SETUBI047" CHAR(1), 
	"SETUBI048" CHAR(1), 
	"SETUBI049" CHAR(1), 
	"SETUBI050" CHAR(1), 
	"SETUBI051" CHAR(1), 
	"SETUBI052" CHAR(1), 
	"SETUBI053" CHAR(1), 
	"SETUBI054" CHAR(1), 
	"SETUBI055" CHAR(1), 
	"SETUBI056" CHAR(1), 
	"SETUBI057" CHAR(1), 
	"SETUBI058" CHAR(1), 
	"SETUBI059" CHAR(1), 
	"SETUBI060" CHAR(1), 
	"SETUBI061" CHAR(1), 
	"SETUBI062" CHAR(1), 
	"SETUBI063" CHAR(1), 
	"SETUBI064" CHAR(1), 
	"SETUBI065" CHAR(1), 
	"SETUBI066" CHAR(1), 
	"SETUBI067" CHAR(1), 
	"SETUBI068" CHAR(1), 
	"SETUBI069" CHAR(1), 
	"SETUBI070" CHAR(1), 
	"SETUBI071" CHAR(1), 
	"TOIAWASE_NO" VARCHAR2(20), 
	"KYOKYU_CD" VARCHAR2(2), 
	"SIKIKIN" NUMBER, 
	"EKI_CD1" VARCHAR2(5), 
	"EKI_CD2" VARCHAR2(5), 
	"EKI_CD3" VARCHAR2(5), 
	"EKI_BUS_JIKAN1" NUMBER(4,0), 
	"EKI_BUSTEI_TOHO_JIKAN1" NUMBER(4,0), 
	"EKI_BUS_JIKAN2" NUMBER(4,0), 
	"EKI_BUSTEI_TOHO_JIKAN2" NUMBER(4,0), 
	"EKI_BUS_JIKAN3" NUMBER(4,0), 
	"EKI_BUSTEI_TOHO_JIKAN3" NUMBER(4,0), 
	"BUSTEI_TOHO_JIKAN1" NUMBER(4,0), 
	"BUSTEI_TOHO_JIKAN2" NUMBER(4,0), 
	"BUSTEI_TOHO_JIKAN3" NUMBER(4,0), 
	"START_SIKIKIN" NUMBER, 
	"END_SIKIKIN" NUMBER, 
	"START_REIKIN" NUMBER, 
	"END_REIKIN" NUMBER, 
	"START_SYOKYAKUKIN" NUMBER, 
	"END_SYOKYAKUKIN" NUMBER, 
	"START_SYOKYAKUKIN_TUKI_SU" NUMBER, 
	"END_SYOKYAKUKIN_TUKI_SU" NUMBER, 
	"START_SYOKYAKUKIN_RITU" NUMBER, 
	"END_SYOKYAKUKIN_RITU" NUMBER, 
	"KEIYAKU_KEITAI_KBN" CHAR(1)
)
/
