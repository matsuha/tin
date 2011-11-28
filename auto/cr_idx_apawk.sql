drop index tatemonocd&&WORK_TBL_NAME;
create index tatemonocd&&WORK_TBL_NAME on &&WORK_TBL_NAME (tatemono_cd);
drop index roomno&&WORK_TBL_NAME;
create index roomno&&WORK_TBL_NAME on &&WORK_TBL_NAME (roomno);
drop index toiawaseno&&WORK_TBL_NAME;
create index toiawaseno&&WORK_TBL_NAME on &&WORK_TBL_NAME (toiawase_no);
drop index jushocd&&WORK_TBL_NAME;
create index jushocd&&WORK_TBL_NAME on &&WORK_TBL_NAME (jushocd1,jushocd2);
