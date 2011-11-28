REM
REM =head1 NAME 
REM
REM up_ts_heya_tiryo_his_start_ymd2.sql
REM
REM =head1 DESCRIPTION
REM 
REM ��������(TS_HEYA_TINRYO_HIS)�̏����X�V����
REM
REM ����AEND_FLG=1�i�O��f�[�^�񋟂����������A����Ȃ������j
REM �̗������̏��J�n��START_YMD�����߂�
REM
REM �ăX�^�[�g���Ă��Ȃ�����(END_FLG=1���ߋ��Ȃ������j�́A
REM �ŏ��̃f�[�^��������START_YMD�ƂȂ�B(END_FLG�ł�START_FLG�ł��Ȃ��j
REM (START_FLG!=1,END_FLG!=1�̂Ƃ���TS_HEYA_TINRYO_HIS.MIN(TIN_HIS_YMD))
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
REM END_FLG��������\���̃��R�[�h�ɑ΂���
REM �Y��������START��END�̋󎺊��Ԃ����ߍX�V����
REM
update
	ts_heya_tinryo_his aa
set
	aa.start_ymd = (
		select
			min(tinryo_his_ymd) as tinryo_his_ymd
		from
			ts_heya_tinryo_his bb
		where
                        aa.tatemono_cd = bb.tatemono_cd
                        and aa.roomno = bb.roomno
			and bb.tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
			and bb.start_flg != '1'
			and bb.end_flg != '1'
                group by 
                    tatemono_cd
                    , roomno
        ),
	aa.start_ymd_sum = (
		select
			min(tinryo_his_ymd) as tinryo_his_ymd
		from
			ts_heya_tinryo_his bb
		where
                        aa.tatemono_cd = bb.tatemono_cd
                        and aa.roomno = bb.roomno
			and bb.tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
			and bb.start_flg != '1'
			and bb.end_flg != '1'
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
      and start_flg != '1'
      and end_flg != '1'
      and aa.tatemono_cd = cc.tatemono_cd
      and aa.roomno = cc.roomno
  ) 
  and nvl(aa.start_ymd, sysdate - 3650) < (
		select
			min(tinryo_his_ymd) as tinryo_his_ymd
		from
			ts_heya_tinryo_his dd
		where
                        aa.tatemono_cd = dd.tatemono_cd
                        and aa.roomno = dd.roomno
			and dd.tinryo_his_ymd <= to_date('&&PREV_KYOKYU_YMD', 'yyyymmdd') 
			and dd.start_flg != '1'
			and dd.end_flg != '1'
                group by 
                    tatemono_cd
                    , roomno
        )
/
