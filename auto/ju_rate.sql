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
where kusitu_ym = trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
insert into ts_kusituritu_ju
 (jushocd1,jushonm1,kusitu_ym,bosyu_sousu,avg_tinryo)
select 
    jushocd1,
    jushonm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
    count(*) bosyu_sousu,
    round(avg((end_tinryo)+ nvl(END_KANRIHI,0)+ nvl(END_KYOEKIHI,0)) ,3) avg_tinryo
  from 
  TS_HEYA_TINRYO_HIS_SUM
  WHERE end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
  AND JUSHOCD1 IS NOT NULL
  and so_kosu > 0
  and end_tinryo > 0
  AND exclusion = '0'
  group by 
    jushocd1,
    jushonm,
    trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
commit
/
drop table ju1ju2;
create table ju1ju2
as
select 
			jushocd1,
			trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm') kusitu_ym,
			sum(so_kosu) so_kosu from (
				select  tatemono_cd,
						jushocd1,
						avg(so_kosu) so_kosu 
				from ts_heya_tinryo_his_sum
						where so_kosu > 0
  AND end_ymd_sum >= trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
						  and end_tinryo > 0
						  AND exclusion = '0'
				group by tatemono_cd,
						 jushocd1
				)
				group by jushocd1,
						 trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
create index ju1ju2dex1 on ju1ju2(jushocd1)
/
analyze table ju1ju2 estimate statistics;
analyze table ts_heya_tinryo_his_sum estimate statistics;
analyze table ts_kusituritu_ju estimate statistics;
update ts_kusituritu_ju aa
set
	(
	SO_KOSU_SOUSU
	) = 
	(
		select sum(ju1ju2.so_kosu) SO_KOSU_SOUSU from ju1ju2
		where ju1ju2.jushocd1 = aa.jushocd1
		and aa.kusitu_ym =  trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
	)
	where aa.kusitu_ym =  trunc(to_date('&&THIS_KYOKYU_YMD', 'yyyymmdd'),'mm')
/
commit
/
