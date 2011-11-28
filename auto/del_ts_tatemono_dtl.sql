REM
REM =head1 NAME 
REM
REM del_ts_tatemono_dtl.sql
REM
REM =head1 DESCRIPTION
REM 
REM �����ڍ׃}�X�^(TS_TATEMONO_DTL)�̏����폜���A
REM �V�����f�[�^�Ɠ���ւ��鏀�������܂��B
REM
REM     PRIMARY KEY(TATEMONO_CD,TOIAWASE_NO,KYOKYU_CD)
REM
REM ���[�N�e�[�u���i����񋟃f�[�^�i�[�e�[�u���j�ɂ���
REM �f�[�^�̂ݍ폜���܂��B
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
REM �Y����݂̂̏�Ԃł���΁A�Ď��s����Α��v�ł���B
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
delete from ts_tatemono_dtl
where ( tatemono_cd,toiawase_no) 
in 
( select tatemono_cd,toiawase_no
		from apawk
		where 
		apawk.tatemono_cd = ts_tatemono_dtl.tatemono_cd
		and apawk.toiawase_no = ts_tatemono_dtl.toiawase_no
)
/
