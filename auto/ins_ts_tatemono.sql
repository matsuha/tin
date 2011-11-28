REM
REM=pod
REM
REM =head1 NAME 
REM
REM ins_ts_tatemono.sql
REM
REM =head1 DESCRIPTION
REM 
REM TS_TATEMONO(建物マスタ）にデータを挿入する
REM PRIMARY KEY(TATEMONO_CD,TOIAWASE_NO,KYOKYU_CD)
REM となっており、同一建物情報は挿入されない
REM
REM 建物種別はこの段階で
REM
REM =over 4
REM
REM =item アパート
REM
REM =item タウンハウス・テラスハウス
REM
REM =item マンション
REM
REM =item 一戸建て
REM
REM =back 4
REM
REM の４分類に分けられる
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
REM 基本的には、最初のデータから再構築となる。TOUROKUYMDに実行時間が挿入されるので
REM やり直す際の参考データになるかもしれない。
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
INSERT INTO TS_TATEMONO(
	     TATEMONO_CD
	    ,TOIAWASE_NO
	    ,KYOKYU_CD
	    ,JUSHOCD1
	    ,JUSHOCD2
	    ,JUSHOCD3
	    ,JUSHOCD4
	    ,YUBIN_NO
	    ,TATEMONO_SYUBETU_NM
	    ,TATEMONO_SYUBETU
	    ,KOZO_SYUBETU_NM
	    ,KOZO_SYUBETU
	    ,SO_KAISU
	    ,CHIKA_KAISU
	    ,TATEMONO_M2
	    ,SIKITI_M2
	    ,SO_KOSU
	    ,KANSEI_YMD
		)
SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,TOIAWASE_NO
		    ,'01' KYOKYU_CD
		    ,JUSHOCD1
		    ,JUSHOCD2
		    ,JUSHOCD3
		    ,JUSHOCD4
		    ,YUBIN_NO
		    ,TATEMONO_SYUBETU_NM
			,decode(TATEMONO_SYUBETU_NM
				,'アパート','アパート'
				,'コーポ','アパート'
				,'ハイツ','アパート'
				,'タウンハウス','タウンハウス・テラスハウス'
				,'テラスハウス','タウンハウス・テラスハウス'
				,'長屋','タウンハウス・テラスハウス'
				,'マンション','マンション'
				,'一戸建て','一戸建て'
				,'貸家','一戸建て'
				,TATEMONO_SYUBETU_NM) TATEMONO_SYUBETU
		    ,KOZO_SYUBETU_NM
		    ,KOZO_SYUBETU_NM
		    ,SO_KAISU
		    ,0 CHIKA_KAISU
		    ,TATEMONO_M2
		    ,SIKITI_M2
		    ,SO_KOSU
		    ,KANSEI_YMD
	    FROM apawk
		where (tatemono_cd,toiawase_no) not in (select tatemono_cd,toiawase_no from ts_tatemono
		where apawk.tatemono_cd = ts_tatemono.tatemono_cd
		and apawk.toiawase_no = ts_tatemono.toiawase_no
		)
/
