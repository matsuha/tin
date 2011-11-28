REM
REM =head1 NAME 
REM
REM up_heya_tinryo.sql
REM
REM =head1 DESCRIPTION
REM 
REM 賃料マスタ(TS_HEYA_TINRYO)の情報を更新する
REM
REM 前回のデータと今回のデータに含まれる
REM 建物、部屋番号、賃料(TATEMONO_CD,ROOMNO,TINRYO)
REM の組み合わせが全く同じ場合
REM KYOKYU_YMDカラムを今回データセットの日付に更新する
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
REM 基本的には、最初のデータから再構築となる。
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
UPDATE TS_HEYA_TINRYO SET KYOKYU_YMD = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD'),KOUSINYMD=SYSDATE
		where (tatemono_cd,toiawase_no,roomno,tinryo) in (select tatemono_cd,toiawase_no,roomno,tinryo from apawk)
		and KYOKYU_YMD =  to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
/
