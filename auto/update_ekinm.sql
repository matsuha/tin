REM
REM =head1 NAME 
REM
REM update_ekinm.sql
REM
REM =head1 DESCRIPTION
REM 
REM アパマンさんから提供される駅名は県コードや路線名が（XXX)で提供されるので
REM 該当情報を削除する
REM
REM 例：　大宮(埼玉県) －＞ 大宮
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
REM 何度実行しても同じ結果になる。
REM
REM =head1 AUTHOR
REM 
REM システム部　瀧内誠(mtakiuc@kantei.co.jp)
REM
REM =cut
REM
update ts_heya_tinryo_his_sum set eki_nm1= substrb(eki_nm1,0,instrb(eki_nm1,'(') - 1)
where eki_nm1 like '%(%'
/
update ts_heya_tinryo_his_sum set eki_nm2= substrb(eki_nm2,0,instrb(eki_nm2,'(') - 1)
where eki_nm2 like '%(%'
/
update ts_heya_tinryo_his_sum set eki_nm3= substrb(eki_nm3,0,instrb(eki_nm3,'(') - 1)
where eki_nm3 like '%(%'
/
commit
/
REM
update ts_tatemono_dtl set eki_nm1= substrb(eki_nm1,0,instrb(eki_nm1,'(') - 1)
where eki_nm1 like '%(%'
/
update ts_tatemono_dtl set eki_nm2= substrb(eki_nm2,0,instrb(eki_nm2,'(') - 1)
where eki_nm2 like '%(%'
/
update ts_tatemono_dtl set eki_nm3= substrb(eki_nm3,0,instrb(eki_nm3,'(') - 1)
where eki_nm3 like '%(%'
/
update ts_kusituritu_eki set ekinm=substrb(ekinm,0,instrb(ekinm,'(') - 1)
where ekinm like '%(%'
/
commit
/
update ts_tatemono_dtl set eki_nm1=to_single_byte(eki_nm1)
/
commit
/
update ts_tatemono_dtl set eki_nm2=to_single_byte(eki_nm2)
/
commit
/
update ts_tatemono_dtl set eki_nm3=to_single_byte(eki_nm3)
/
commit
/
update ts_kusituritu_eki set ekinm=to_single_byte(ekinm)
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'ケ','ヶ')
where eki_cd1 in (select eki_cd1 from ts_tatemono_dtl where eki_nm1 like '%ケ%')
/
commit
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'ケ','ヶ')
where eki_cd2 in (select eki_cd2 from ts_tatemono_dtl where eki_nm2 like '%ケ%')
/
commit
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'ケ','ヶ')
where eki_cd3 in (select eki_cd3 from ts_tatemono_dtl where eki_nm3 like '%ケ%')
/
commit
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'ケ','ヶ')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '%ケ%')
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'・')
where eki_nm1 like '東京ディズニーランド・ステーション'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'・')
where eki_nm2 like '東京ディズニーランド・ステーション'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'・')
where eki_nm3 like '東京ディズニーランド・ステーション'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'・')
where ekinm like '東京ディズニーランド・ステーション'
/
commit
/
REM
REM KOBETU TAIOU
REM
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'三ツ境','三ッ境')
where eki_nm1 like '三ツ境'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'三ツ境','三ッ境')
where eki_nm2 like '三ツ境'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'三ツ境','三ッ境')
where eki_nm3 like '三ツ境'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'三ツ境','三ッ境')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '三ツ境')
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'三ツ沢','三ッ沢')
where eki_nm1 like '三ツ沢%'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'三ツ沢','三ッ沢')
where eki_nm2 like '三ツ沢%'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'三ツ沢','三ッ沢')
where eki_nm3 like '三ツ沢%'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'三ツ沢','三ッ沢')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '三ツ沢%')
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'鳩ヶ谷','鳩ケ谷')
where eki_nm1 like '%鳩ヶ谷'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'鳩ヶ谷','鳩ケ谷')
where eki_nm2 like '%鳩ヶ谷'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'鳩ヶ谷','鳩ケ谷')
where eki_nm3 like '%鳩ヶ谷'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'鳩ヶ谷','鳩ケ谷')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '%鳩ヶ谷')
/
commit
/
update ts_tatemono_dtl set eki_nm1=replace(eki_nm1,'西ヶ原四丁目','西ケ原四丁目')
where eki_nm1 like '西ヶ原四丁目'
/
update ts_tatemono_dtl set eki_nm2=replace(eki_nm2,'西ヶ原四丁目','西ケ原四丁目')
where eki_nm2 like '西ヶ原四丁目'
/
update ts_tatemono_dtl set eki_nm3=replace(eki_nm3,'西ヶ原四丁目','西ケ原四丁目')
where eki_nm3 like '西ヶ原四丁目'
/
update ts_kusituritu_eki set ekinm=replace(ekinm,'西ヶ原四丁目','西ケ原四丁目')
where ekicd in (select ekicd from ts_kusituritu_eki where ekinm like '西ヶ原四丁目')
/
commit
/
