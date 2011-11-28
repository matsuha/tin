### TS_SETUBI_NEEDS�ɃJ�����ƃv���C�}���B�ǉ� ###
ALTER TABLE TS_EVE.TS_SETUBI_NEEDS DROP PRIMARY KEY;
delete TS_EVE.TS_SETUBI_NEEDS;
ALTER TABLE TS_EVE.TS_SETUBI_NEEDS ADD(
  TATEMONO_SYUBETU VARCHAR2(64) not null ENABLE
);
ALTER TABLE TS_EVE.TS_SETUBI_NEEDS ADD PRIMARY KEY (JUSHOCD1, SINGLE_FAMILY_FLG,SETUBI,TATEMONO_SYUBETU);

### TS_SETUBI_NEEDS�Ƀf�[�^�ǉ� ###
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','OPTICAL_FIBER','8','68',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','CATV','25','23',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','GAS_STOVE','11','54',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','SYSTEM_KITCHEN','20','31',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','IH_COOKINGHEATER','22','29',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','IND_SINK','10','56',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','SHAMPOO_DRESSER','23','27',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','REHEAT','17','36',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','BATH_DRYER','21','29',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','WASHING_TOILET','18','34',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','AIR_CON','4','75',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','SEP_BATH','1','85',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','FLOORING','7','69',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','FLOOR_HEAT','26','14',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','BICYCLE_PARKING','9','57',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','WASHING_MACHINE_BATH','3','79',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','BALCONY','14','49',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','VERANDA','5','70',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','EV','12','52',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','AUTO_LOCK','13','51',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','TV_INTER_PHONE','15','43',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','DELIVERY_BOX','16','37',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','DUST_COL','6','70',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','ALL_ELECTRIC','24','24',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','CLOSET','2','80',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','WALK_IN_CLOSET','19','34',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','UNDER_FLOOR','27','14',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�}���V����','LOFT','28','13',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','OPTICAL_FIBER','11','65',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','CATV','24','24',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','GAS_STOVE','10','65',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','SYSTEM_KITCHEN','17','48',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','IH_COOKINGHEATER','23','30',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','IND_SINK','7','75',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','SHAMPOO_DRESSER','21','34',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','REHEAT','13','59',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','BATH_DRYER','22','33',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','WASHING_TOILET','20','38',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','AIR_CON','16','50',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','SEP_BATH','1','93',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','FLOORING','6','77',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','FLOOR_HEAT','26','20',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','BICYCLE_PARKING','9','67',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','WASHING_MACHINE_BATH','2','87',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','BALCONY','12','62',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','VERANDA','3','85',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','EV','8','68',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','AUTO_LOCK','14','57',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','TV_INTER_PHONE','15','52',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','DELIVERY_BOX','19','39',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','DUST_COL','5','79',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','ALL_ELECTRIC','26','20',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','CLOSET','4','83',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','WALK_IN_CLOSET','18','44',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','UNDER_FLOOR','14','24',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�}���V����','LOFT','28','18',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','OPTICAL_FIBER','8','55',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','CATV','22','21',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','GAS_STOVE','6','58',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','SYSTEM_KITCHEN','17','25',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','IH_COOKINGHEATER','14','27',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','IND_SINK','11','40',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','SHAMPOO_DRESSER','25','18',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','REHEAT','13','29',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','BATH_DRYER','19','24',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','WASHING_TOILET','17','25',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','AIR_CON','2','72',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','SEP_BATH','1','73',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','FLOORING','6','58',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','FLOOR_HEAT','28','13',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','BICYCLE_PARKING','9','50',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','WASHING_MACHINE_BATH','3','67',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','BALCONY','12','33',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','VERANDA','10','46',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','EV','24','18',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','AUTO_LOCK','21','24',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','TV_INTER_PHONE','14','27',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','DELIVERY_BOX','20','24',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','DUST_COL','5','58',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','ALL_ELECTRIC','23','19',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','CLOSET','4','64',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','WALK_IN_CLOSET','16','27',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','UNDER_FLOOR','27','14',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','1','�A�p�[�g','LOFT','26','15',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','OPTICAL_FIBER','12','57',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','CATV','26','19',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','GAS_STOVE','8','60',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','SYSTEM_KITCHEN','17','43',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','IH_COOKINGHEATER','24','27',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','IND_SINK','7','72',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','SHAMPOO_DRESSER','19','37',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','REHEAT','9','58',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','BATH_DRYER','21','31',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','WASHING_TOILET','16','47',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','AIR_CON','9','58',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','SEP_BATH','1','95',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','FLOORING','5','79',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','FLOOR_HEAT','26','19',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','BICYCLE_PARKING','11','58',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','WASHING_MACHINE_BATH','4','83',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','BALCONY','15','51',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','VERANDA','3','85',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','EV','20','35',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','AUTO_LOCK','18','40',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','TV_INTER_PHONE','13','53',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','DELIVERY_BOX','21','31',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','DUST_COL','6','78',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','ALL_ELECTRIC','25','26',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','CLOSET','2','91',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','WALK_IN_CLOSET','14','52',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','UNDER_FLOOR','23','28',sysdate,sysdate);
insert into TS_EVE.TS_SETUBI_NEEDS (JUSHOCD1,SINGLE_FAMILY_FLG,TATEMONO_SYUBETU,SETUBI,PRIORITY,NEEDS,TOUROKUYMD,KOUSINYMD) VALUES ('11','2','�A�p�[�g','LOFT','28','17',sysdate,sysdate);

### TS_SETUBI_NEEDS_SUM2�i���́j�e�[�u���쐬 ###
CREATE TABLE TS_EVE.TS_SETUBI_NEEDS_SUM2 (
  JUSHOCD1          CHAR(2)       NOT NULL,
  JUSHOCD2          CHAR(3)       NOT NULL,
  TATEMONO_SYUBETU  VARCHAR2(64)  NOT NULL,
  SINGLE_FAMILY_FLG CHAR(1)       NOT NULL,
  SETUBI            VARCHAR2(64)  NOT NULL,
  RATE              NUMBER        NOT NULL,
  PRIORITY          NUMBER        NOT NULL,
  NEEDS             NUMBER        NOT NULL,
  TOUROKUYMD        DATE          DEFAULT SYSDATE,
  KOUSINYMD         DATE          DEFAULT SYSDATE,
  PRIMARY KEY(JUSHOCD1, JUSHOCD2, TATEMONO_SYUBETU, SINGLE_FAMILY_FLG,SETUBI)
);

### TS_SETUBI_NEEDS_SUM2�Ƀf�[�^�쐬 ###
INSERT ALL
  INTO TS_EVE.TS_SETUBI_NEEDS_SUM2 (JUSHOCD1, JUSHOCD2, TATEMONO_SYUBETU, SINGLE_FAMILY_FLG,SETUBI,RATE,PRIORITY,NEEDS)
    VALUES (JUSHOCD1, JUSHOCD2, TATEMONO_SYUBETU, SINGLE_FAMILY_FLG,SETUBI,RATE,PRIORITY,NEEDS)
SELECT
  SUM.JUSHOCD1 JUSHOCD1,
  SUM.JUSHOCD2 JUSHOCD2,
  SUM.TATEMONO_SYUBETU TATEMONO_SYUBETU,
  SUM.SINGLE_FAMILY_FLG SINGLE_FAMILY_FLG,
  SUM.SETUBI SETUBI,
  SUM.RATE RATE,
  TS_SETUBI_NEEDS.PRIORITY PRIORITY,
  TS_SETUBI_NEEDS.NEEDS NEEDS
FROM (
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'AIR_CON' SETUBI,
    ROUND(SUM(AIR_CON)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'SEP_BATH' SETUBI,
    ROUND(SUM(SEP_BATH)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'GAS_STOVE' SETUBI,
    ROUND(SUM(GAS_STOVE)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'OPTICAL_FIBER' SETUBI,
    ROUND(SUM(OPTICAL_FIBER)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'CLOSET' SETUBI,
    ROUND(SUM(CLOSET)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'IND_SINK' SETUBI,
    ROUND(SUM(IND_SINK)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'AUTO_LOCK' SETUBI,
    ROUND(SUM(AUTO_LOCK)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'TV_INTER_PHONE' SETUBI,
    ROUND(SUM(TV_INTER_PHONE)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'REHEAT' SETUBI,
    ROUND(SUM(REHEAT)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'BATH_DRYER' SETUBI,
    ROUND(SUM(BATH_DRYER)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'WASHING_TOILET' SETUBI,
    ROUND(SUM(WASHING_TOILET)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'WASHING_MACHINE_BATH' SETUBI,
    ROUND(SUM(WASHING_MACHINE_BATH)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'BALCONY' SETUBI,
    ROUND(SUM(BALCONY)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'EV' SETUBI,
    ROUND(SUM(EV)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'DELIVERY_BOX' SETUBI,
    ROUND(SUM(DELIVERY_BOX)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'UNDER_FLOOR' SETUBI,
    ROUND(SUM(UNDER_FLOOR)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'DUST_COL' SETUBI,
    ROUND(SUM(DUST_COL)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'BICYCLE_PARKING' SETUBI,
    ROUND(SUM(BICYCLE_PARKING)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'SHAMPOO_DRESSER' SETUBI,
    ROUND(SUM(SHAMPOO_DRESSER)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'FLOORING' SETUBI,
    ROUND(SUM(FLOORING)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'WALK_IN_CLOSET' SETUBI,
    ROUND(SUM(WALK_IN_CLOSET)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'FLOOR_HEAT' SETUBI,
    ROUND(SUM(FLOOR_HEAT)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'IH_COOKINGHEATER' SETUBI,
    ROUND(SUM(IH_COOKINGHEATER)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'ALL_ELECTRIC' SETUBI,
    ROUND(SUM(ALL_ELECTRIC)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'VERANDA' SETUBI,
    ROUND(SUM(VERANDA)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'SYSTEM_KITCHEN' SETUBI,
    ROUND(SUM(SYSTEM_KITCHEN)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'CATV' SETUBI,
    ROUND(SUM(CATV)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
  UNION ALL
  SELECT
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
    SINGLE_FAMILY_FLG,
    'LOFT' SETUBI,
    ROUND(SUM(LOFT)/SUM(CNT)*100) RATE
  FROM TS_EVE.TS_SETUBI_NEEDS_SUM
  WHERE TATEMONO_SYUBETU IN ('�}���V����','�A�p�[�g')
  GROUP BY 
    JUSHOCD1,
    JUSHOCD2,
    TATEMONO_SYUBETU,
    DECODE(MADORI,
           '1K','1',
           '1R','1',
           '1DK','1',
           '1LDK','1',
           '2K','1',
           '2R','1',
           '2DK','1',
           '2')
) SUM,TS_EVE.TS_SETUBI_NEEDS
WHERE SUM.SINGLE_FAMILY_FLG = TS_SETUBI_NEEDS.SINGLE_FAMILY_FLG
AND   SUM.TATEMONO_SYUBETU = TS_SETUBI_NEEDS.TATEMONO_SYUBETU
AND   SUM.SETUBI = TS_SETUBI_NEEDS.SETUBI
ORDER BY 
  SUM.JUSHOCD1 ,
  SUM.JUSHOCD2 ,
  SUM.TATEMONO_SYUBETU ,
  SUM.SINGLE_FAMILY_FLG ,
  TS_SETUBI_NEEDS.PRIORITY
;