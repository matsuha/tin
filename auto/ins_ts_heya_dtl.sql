REM
REM =head1 NAME 
REM
REM ins_ts_heya_dtl.sql
REM
REM =head1 DESCRIPTION
REM 
REM �����Ԏ�ڍ׃}�X�^(TS_HEYA_DTL)�̏����C���T�[�g����
REM
REM      PRIMARY KEY(TATEMONO_CD,TOIAWASE_NO,KYOKYU_CD,ROOMNO)
REM
REM ���[�N�e�[�u���ɑ��݂��Ă���f�[�^�𗘗p���ăC���T�[�g����B
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
REM ��{�I�ɂ́A�ŏ��̃f�[�^����č\�z�ƂȂ�B
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
INSERT INTO TS_HEYA_DTL (
	     TATEMONO_CD
	    ,TOIAWASE_NO
	    ,KYOKYU_CD
	    ,ROOMNO
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
	)
	SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,TOIAWASE_NO
		    ,'01' KYOKYU_CD
	    ,ROOMNO
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
		    FROM apawk
		where (tatemono_cd,toiawase_no,roomno) not in (select tatemono_cd,toiawase_no,roomno from ts_heya_dtl
		where apawk.tatemono_cd = ts_heya_dtl.tatemono_cd
		and apawk.roomno = ts_heya_dtl.roomno
		and apawk.toiawase_no = ts_heya_dtl.toiawase_no
		)
/
