REM
REM=pod
REM
REM =head1 NAME 
REM
REM ins_ts_tatemono.sql
REM
REM =head1 DESCRIPTION
REM 
REM TS_TATEMONO(�����}�X�^�j�Ƀf�[�^��}������
REM PRIMARY KEY(TATEMONO_CD,TOIAWASE_NO,KYOKYU_CD)
REM �ƂȂ��Ă���A���ꌚ�����͑}������Ȃ�
REM
REM ������ʂ͂��̒i�K��
REM
REM =over 4
REM
REM =item �A�p�[�g
REM
REM =item �^�E���n�E�X�E�e���X�n�E�X
REM
REM =item �}���V����
REM
REM =item ��ˌ���
REM
REM =back 4
REM
REM �̂S���ނɕ�������
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
REM ��{�I�ɂ́A�ŏ��̃f�[�^����č\�z�ƂȂ�BTOUROKUYMD�Ɏ��s���Ԃ��}�������̂�
REM ��蒼���ۂ̎Q�l�f�[�^�ɂȂ邩������Ȃ��B
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
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
				,'�A�p�[�g','�A�p�[�g'
				,'�R�[�|','�A�p�[�g'
				,'�n�C�c','�A�p�[�g'
				,'�^�E���n�E�X','�^�E���n�E�X�E�e���X�n�E�X'
				,'�e���X�n�E�X','�^�E���n�E�X�E�e���X�n�E�X'
				,'����','�^�E���n�E�X�E�e���X�n�E�X'
				,'�}���V����','�}���V����'
				,'��ˌ���','��ˌ���'
				,'�݉�','��ˌ���'
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
