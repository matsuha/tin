REM
REM =head1 NAME 
REM
REM up_heya_tinryo.sql
REM
REM =head1 DESCRIPTION
REM 
REM �����}�X�^(TS_HEYA_TINRYO)�̏����X�V����
REM
REM �O��̃f�[�^�ƍ���̃f�[�^�Ɋ܂܂��
REM �����A�����ԍ��A����(TATEMONO_CD,ROOMNO,TINRYO)
REM �̑g�ݍ��킹���S�������ꍇ
REM KYOKYU_YMD�J����������f�[�^�Z�b�g�̓��t�ɍX�V����
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
UPDATE TS_HEYA_TINRYO SET KYOKYU_YMD = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD'),KOUSINYMD=SYSDATE
		where (tatemono_cd,toiawase_no,roomno,tinryo) in (select tatemono_cd,toiawase_no,roomno,tinryo from apawk)
		and KYOKYU_YMD =  to_date('&&PREV_KYOKYU_YMD','YYYYMMDD')
/
