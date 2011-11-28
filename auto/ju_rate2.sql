REM
REM =head1 NAME 
REM
REM ju_rate.sql
REM
REM =head1 DESCRIPTION
REM 
REM TS_KUSITURITU_JU�i�󎺗��}�X�^�Z���ҁj�Ƀf�[�^���쐬����
REM
REM �O���ȑO�Ƀf�[�^�񋟂��X�^�[�g���Ă��镨���i�����j�ł���A
REM �����̍ŐV�f�[�^�ɏ�񂪊܂܂����̂�ΏۂƂ���
REM �i�󎺕����Ƃ��ăJ�E���g����j
REM
REM ���Ӂj�⍇��NO�̊֌W�œ��ꌚ��CD���������݂���̂ŁAUNIQ�ɂ��ė��p����
REM
REM ��W�����Ƒ��ː�SUM(TS_TATEMONO.KOSU)���J�E���g���邽�ߕ����P�ʂ̏��ƌ����P�ʂ̏��ɕ����ăJ�E���g����
REM ��L�̏���JOIN���čŏI���𓾂�
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
delete from ts_kusituritu_ju
where kusitu_ym = trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm')
/
insert all into ts_kusituritu_ju
 (jushocd1,jushocd2,kusitu_ym,so_kosu_sousu,bosyu_sousu,avg_tinryo)
values
 (jushocd1,jushocd2,kusitu_ym,so_kosu_sousu,bosyu_sousu,avg_tinryo)
select r.jushocd1,r.jushocd2,r.kusitu_ym,t.so_kosu_sousu,r.bosyu_sousu,r.avg_tinryo
from 
(
select 
    tat.jushocd1,
    tat.jushocd2,
    trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm') kusitu_ym,
    count(*) bosyu_sousu,
    avg(his_b.tinryo) avg_tinryo
  from 
    (
    select 
      tatemono_cd,
      roomno,
      min(tinryo+nvl(kyoekihi,0)+nvl(kanrihi,0)) tinryo
    from 
      ts_heya_tinryo_his 
    where end_ymd <= to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd')
    and   end_ymd >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') 
    and   start_ymd < trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') 
	and start_flg !='1'
	and end_flg !='1'
	and tinryo > 0
    group by 
      tatemono_cd,
      roomno
    ) his_b, (select tatemono_cd,jushocd1,jushocd2,avg(so_kosu) so_kosu 
			from ts_tatemono where so_kosu > 0
			group by tatemono_cd,jushocd1,jushocd2
			) tat
  where tat.tatemono_cd = his_b.tatemono_cd
  group by 
    tat.jushocd1,
    tat.jushocd2,
    trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm')
) r, (
select 
    tat.jushocd1,
    tat.jushocd2,
    trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm') kusitu_ym,
    sum(so_kosu) so_kosu_sousu
  from 
    (
    select 
      distinct(tatemono_cd) tatemono_cd
    from 
      ts_heya_tinryo_his 
    where end_ymd <= to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd')
    and   end_ymd >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') 
    and   start_ymd < trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') 
	and start_flg !='1'
	and end_flg !='1'
	and tinryo > 0
    ) his_b, (select tatemono_cd,jushocd1,jushocd2,avg(so_kosu) so_kosu 
			from ts_tatemono where so_kosu > 0
			group by tatemono_cd,jushocd1,jushocd2
			) tat
  where tat.tatemono_cd = his_b.tatemono_cd
  group by 
    tat.jushocd1,
    tat.jushocd2,
    trunc(add_months(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),-1),'mm')
) t
where r.jushocd1 = t.jushocd1
and r.jushocd2 = t.jushocd2
and r.kusitu_ym = t.kusitu_ym
/
