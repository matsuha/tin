REM
REM =head1 NAME 
REM
REM eki_rate.sql
REM
REM =head1 DESCRIPTION
REM 
REM TS_KUSITURITU_EKI�i�󎺗��}�X�^ �w�ҁj�Ƀf�[�^���쐬����
REM
REM �O���ȑO�Ƀf�[�^�񋟂��X�^�[�g���Ă��镨���i�����j�ł���A
REM �����̍ŐV�f�[�^�ɏ�񂪊܂܂����̂�ΏۂƂ���
REM �i�󎺕����Ƃ��ăJ�E���g����j
REM
REM ���Ӂj�⍇��NO�̊֌W�œ��ꌚ��CD���������݂���̂ŁAUNIQ�ɂ��ė��p����
REM ���ː��͎d�l�ɂȂ��̂ŁA�y���f�B���O�B
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
REM ���x���s���Ă��������ʂɂȂ�B
REM
REM =head1 AUTHOR
REM 
REM �V�X�e�����@�����(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
REM
delete from ts_kusituritu_eki
where kusitu_ym = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
insert into ts_kusituritu_eki
 (ekicd,ekinm,kusitu_ym,tatemono_syubetu,madori,bosyu_sousu,avg_tinryo)
select ekicd,ekinm,kusitu_ym,tatemono_syubetu,madori,count(*) bosyu_sousu,round(sum(sum_tinryo)/count(*)) avg_tinryo
from (
select 
	toiawase_no,
	eki_cd1 ekicd,
    eki_nm1 ekinm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
    tatemono_syubetu,
    madori,
    round(end_tinryo+ nvl(END_KANRIHI,0)+ nvl(END_KYOEKIHI,0) ,3) sum_tinryo
  from TS_HEYA_TINRYO_HIS_SUM
  where end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
  and eki_nm1 is not null
  and eki_cd1 is not null
  and end_tinryo > 0
  AND exclusion = '0'
union
select 
	toiawase_no,
	eki_cd2 ekicd,
    eki_nm2 ekinm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
    tatemono_syubetu,
    madori,
    round(end_tinryo+ nvl(END_KANRIHI,0)+ nvl(END_KYOEKIHI,0) ,3) sum_tinryo
  from TS_HEYA_TINRYO_HIS_SUM
  where end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
  and eki_nm2 is not null
  and eki_cd2 is not null
  and end_tinryo > 0
  AND exclusion = '0'
union
select 
	toiawase_no,
	eki_cd3 ekicd,
    eki_nm3 ekinm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
    tatemono_syubetu,
    madori,
    round(end_tinryo+ nvl(END_KANRIHI,0)+ nvl(END_KYOEKIHI,0) ,3) sum_tinryo
  from TS_HEYA_TINRYO_HIS_SUM
  where end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
  and eki_nm3 is not null
  and end_tinryo > 0
  and eki_cd3 is not null
  AND exclusion = '0'
)
group by 
	ekicd,
    ekinm,
    kusitu_ym,
    tatemono_syubetu,
    madori
/
