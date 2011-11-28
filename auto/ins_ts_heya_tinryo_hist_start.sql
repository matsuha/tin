REM
REM =head1 NAME 
REM
REM ins_ts_heya_tinryo_hist_start.sql
REM
REM =head1 DESCRIPTION
REM 
REM ���������}�X�^(TS_HEYA_TINRYO_HIS)��TIN_HIS_YMD�i�����J�����Ɂj
REM END_FLG!=1(�񋟌p���܂���START_FLG=1�j������
REM END_FLG=1�i�񋟂��I���j���Ă�����̂ق����V�����ꍇ
REM
REM ����̃f�[�^�ɊY������(TATEMONO_CD)�{�����ԍ��iROOMNO)�̏�񂪊܂܂���
REM �f�[�^�񋟂��ăX�^�[�g���ꂽ�Ƃ݂Ȃ��āA
REM START_FLG���P�̃��R�[�h���C���T�[�g���܂��B
REM
REM =over 2
REM
REM =item TIN_HIS_YMD�ɂ͍���̃f�[�^�񋟓�������܂�
REM
REM =back
REM
REM =head1 Trouble Shooting
REM
REM TOUROKUYMD ���ŐV��START_FLG=1�̃��R�[�h�������I�y���[�V�������K�v
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
INSERT INTO TS_HEYA_TINRYO_HIS (
				TATEMONO_CD
				,KYOKYU_CD
				,ROOMNO
				,TINRYO_HIS_YMD
				,START_FLG
		)
		SELECT
		     distinct(TATEMONO_CD) tatemono_cd
		    ,'01' KYOKYU_CD
			,ROOMNO
			,KYOKYU_YMD
			,'1' START_FLG
		    FROM apawk
		where (tatemono_cd,roomno) in
		(select tatemono_cd,roomno
			from  apawk 
			where
			(tatemono_cd,roomno) in (
				select a.tatemono_cd,a.roomno from (
				select tatemono_cd,roomno,max(tinryo_his_ymd) maxend 
				from ts_heya_tinryo_his
				where end_flg = '1'
				group by tatemono_cd,roomno
			    ) a,
			    (
				select tatemono_cd,roomno,max(tinryo_his_ymd) maxnotend 
				from ts_heya_tinryo_his
				where end_flg != '1'
				group by tatemono_cd,roomno
			    ) b
				where a.tatemono_cd = b.tatemono_cd
				and a.roomno = b.roomno
				and maxend > maxnotend
			)
		)
/
