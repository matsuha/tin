REM
REM =head1 NAME 
REM
REM up_heya_tinryo_priority_select_init.sql
REM
REM =head1 DESCRIPTION
REM 
REM �����}�X�^(TS_HEYA_TINRYO)�̍ŗD��Q�l�t���O(PRIORITY_SELECT)������������
REM �ŗD��FLG�iPRIORITY)�łȂ����Ƃɒ��ӁB
REM ���ꌚ���A���ꕔ���̏�񂪕������邽�߁A�D�揇�ʂ����̃J�����Ŏw�肷��
REM �ŗD��͂P�ł���
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
REM �ŐV��TOUROKUYMD�𗘗p���āA�Y�����R�[�h���폜���Ă���Ď��s�ƂȂ�
REM
REM =cut
REM
REM
UPDATE TS_HEYA_TINRYO SET PRIORITY_SELECT = 0,KOUSINYMD=SYSDATE
WHERE PRIORITY_SELECT !=0
AND kyokyu_ymd = to_date('&&THIS_KYOKYU_YMD','YYYYMMDD')
/
