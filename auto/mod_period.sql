PROMPT 新築と思われる物件の場合、完成日との差が24ヶ月以下の場合　それを空室期間として設定
update ts_seiyaku set period = round(months_between(end_ymd_sum,kansei_ymd),3)
where period is null
and
round(months_between(end_ymd_sum,kansei_ymd),3) <= 24
/
commit
/
PROMPT 新築もそれ以外もマイナス１から０の間の空室期間は０として利用する
update ts_seiyaku set period = 0
where period >= -1
and period < 0
/
commit
/
PROMPT 新築もそれ以外も－１より小さい空室期間は異常値としてNULL扱い
update ts_seiyaku set period = NULL
where period < -1
/
commit
/
PROMPT 新築以外２４以上は異常値としてNULL
update ts_seiyaku set period = NULL
where period > 24
/
commit
/
