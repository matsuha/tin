REM
REM =head1 NAME 
REM
REM set_priority_select_f1.sql
REM
REM =head1 DESCRIPTION
REM 
REM �����}�X�^(TS_HEYA_TINRYO)�̗D��x�Q�l�t���O��ݒ肷��
REM �ŗD��t���O�iPRIORITY)�͂����Ȃ�X�V�����A�Q�lFLG
REM �iPRIORITY_SELECT)�ɐݒ肷��j
REM
REM =head2 ���[��1
REM
REM ���ꌚ���A���ꕔ���A�����⍇���m�n�̏ꍇ�A�ŏ��̒�����I��
REM �b��t���O�@ PRIORITY_SELECT = '3'�@��ݒ�
REM
REM =head2 ���[��2
REM
REM ��L������PRIORITY_SELECT = '3'��ΏۂƂ���
REM TS_TATEMONO.KOSU ���ː����m�t�k�k�łȂ��������P�I���A�i����MAX�擾�Ƃ��Ă���j
REM PRIORITY_SELECT = '2'��ݒ�
REM
REM =head2 ���[��3
REM
REM ��L������PRIORITY_SELECT = '2'��ΏۂƂ���
REM �ݔ��ۗL����(TS_HEYA_SETUBI.SETUBI_CNT)����ԑ����������w��
REM PRIORITY_SELECT = '1'��ݒ�
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
REM �ŐV��TOUROKUYMD�𗘗p���āA�Y�����R�[�h���폜���Ă���Ď��s�ƂȂ�
REM
REM =cut
REM
REM
UPDATE TS_HEYA_TINRYO SET PRIORITY_SELECT = '3',KOUSINYMD=SYSDATE
		where 
		(tatemono_cd,roomno,kyokyu_ymd,tinryo)
		in 
		(
			select tatemono_cd,roomno,kyokyu_ymd,tinryo from (
				(select 
						ts_heya_tinryo.tatemono_cd,
						ts_heya_tinryo.roomno,
						ts_heya_tinryo.kyokyu_ymd,
						min(ts_heya_tinryo.tinryo) tinryo
						from 
						ts_heya_tinryo
				where 
				ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
				and ts_heya_tinryo.exclusion='0'
				group by 
				ts_heya_tinryo.tatemono_cd,
				ts_heya_tinryo.roomno,
				ts_heya_tinryo.kyokyu_ymd
				)
			)
		)
/
COMMIT
/
REM
REM
REM UPDATE TS_HEYA_TINRYO SET PRIORITY_SELECT = '2',KOUSINYMD=SYSDATE
REM 		where 
REM 		(tatemono_cd,toiawase_no)
REM 		in 
REM 		(
REM 		select tatemono_cd,toiawase_no
REM 		from ts_tatemono
REM 		where (tatemono_cd, nvl(so_kosu,0)) in 
REM 				(
REM 				select tatemono_cd,max(nvl(so_kosu,0)) so_kosu 
REM 				from ts_tatemono
REM 				where (tatemono_cd,toiawase_no) in
REM 						(
REM 						select 
REM 								ts_heya_tinryo.tatemono_cd,
REM 								ts_heya_tinryo.toiawase_no
REM 								from 
REM 								ts_heya_tinryo
REM 								where 
REM 								ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
REM 								and ts_heya_tinryo.priority_select = '3'
REM 								and ts_heya_tinryo.exclusion='0'
REM 						)
REM 				group by tatemono_cd
REM 				)
REM 		)
REM 		and  ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
REM 		and ts_heya_tinryo.priority_select = '3'
REM /
REM
REM
DROP TABLE SETP1DUMMY
/
CREATE TABLE SETP1DUMMY
AS
select toiawase_no,tatemono_cd,roomno
		from ts_heya_setubi
		where (tatemono_cd,roomno,nvl(setubi_cnt,0)) in 
				(
				select tatemono_cd,roomno,max(nvl(setubi_cnt,0)) setubi_cnt 
				from ts_heya_setubi
				where (tatemono_cd,toiawase_no,roomno) in
						(
						select 
								ts_heya_tinryo.tatemono_cd,
								ts_heya_tinryo.toiawase_no,
								ts_heya_tinryo.roomno
								from 
								ts_heya_tinryo
								where 
								ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
								and ts_heya_tinryo.priority_select = '3'
								and ts_heya_tinryo.exclusion='0'
						)
				group by tatemono_cd,roomno
)
/
UPDATE TS_HEYA_TINRYO SET PRIORITY_SELECT = '1',KOUSINYMD=SYSDATE
		where 
		(toiawase_no,tatemono_cd,roomno)
		in 
		(
		select toiawase_no,tatemono_cd,roomno
				from SETP1DUMMY
		)
		and  ts_heya_tinryo.kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
		and ts_heya_tinryo.priority_select = '3'
/
COMMIT
/
