PROMPT �V�z�Ǝv���镨���̏ꍇ�A�������Ƃ̍���24�����ȉ��̏ꍇ�@������󎺊��ԂƂ��Đݒ�
update ts_seiyaku set period = round(months_between(end_ymd_sum,kansei_ymd),3)
where period is null
and
round(months_between(end_ymd_sum,kansei_ymd),3) <= 24
/
commit
/
PROMPT �V�z������ȊO���}�C�i�X�P����O�̊Ԃ̋󎺊��Ԃ͂O�Ƃ��ė��p����
update ts_seiyaku set period = 0
where period >= -1
and period < 0
/
commit
/
PROMPT �V�z������ȊO���|�P��菬�����󎺊��Ԃُ͈�l�Ƃ���NULL����
update ts_seiyaku set period = NULL
where period < -1
/
commit
/
PROMPT �V�z�ȊO�Q�S�ȏ�ُ͈�l�Ƃ���NULL
update ts_seiyaku set period = NULL
where period > 24
/
commit
/
