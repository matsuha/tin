REM
REM =head1 NAME 
REM
REM up_ts_heya_tiryo_his_start_ymd.sql
REM
REM =head1 DESCRIPTION
REM 
REM ��������(TS_HEYA_TINRYO_HIS)�̏����X�V����
REM
REM ����AEND_FLG=1�i�O��f�[�^�񋟂����������A����Ȃ������j
REM �̗������̏��J�n��START_YMD�����߂�
REM
REM �ăX�^�[�g���Ă��镨��(��xEND_FLG=1���Ă��镨���j�́A�ő�̍ăX�^�[�g��
REM (START_FLG=1�̂Ƃ���TS_HEYA_TINRYO_HIS.START_YMD)
REM �������̋󎺃X�^�[�g�̓��ƂȂ�
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
REM 
update
	ts_heya_tinryo_his aa
set
	aa.start_ymd = (
		select
			max(tinryo_his_ymd) as tinryo_his_ymd
		from
			ts_heya_tinryo_his bb
		where
                        aa.tatemono_cd = bb.tatemono_cd
                        and aa.roomno = bb.roomno
			and bb.tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
			and bb.start_flg = '1'
                group by 
                    tatemono_cd
                    , roomno
        ),
	aa.start_ymd_sum = (
		select
			max(tinryo_his_ymd) as tinryo_his_ymd
		from
			ts_heya_tinryo_his bb
		where
                        aa.tatemono_cd = bb.tatemono_cd
                        and aa.roomno = bb.roomno
			and bb.tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
			and bb.start_flg = '1'
                group by 
                    tatemono_cd
                    , roomno
        )
where
  tinryo_his_ymd = to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd') 
  and end_flg = '1'
  and exists (
    select 
      tatemono_cd
      , roomno
    from
      ts_heya_tinryo_his cc
    where
      tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
      and start_flg = '1'
      and aa.tatemono_cd = cc.tatemono_cd
      and aa.roomno = cc.roomno
  ) 
  and nvl(aa.start_ymd_sum, sysdate - 3650) < (
		select
			max(tinryo_his_ymd) as tinryo_his_ymd
		from
			ts_heya_tinryo_his dd
		where
                        aa.tatemono_cd = dd.tatemono_cd
                        and aa.roomno = dd.roomno
			and dd.tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
			and dd.start_flg = '1'
                group by 
                    tatemono_cd
                    , roomno
        )
/
