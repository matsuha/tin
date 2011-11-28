BEGIN
	DBMS_STATS.GATHER_TABLE_STATS(
		OWNNAME       => 'KANTEI'
		,TABNAME      => 'TS_HEYA_TINRYO_HIS_SUM'
		,cascade=> TRUE
		,METHOD_OPT=>'FOR ALL INDEXED'
	);
END;
/
BEGIN
	DBMS_STATS.GATHER_TABLE_STATS(
		OWNNAME       => 'KANTEI'
		,TABNAME      => 'TS_EKI_SRCH'
		,cascade=> TRUE
		,METHOD_OPT=>'FOR ALL INDEXED'
	);
END;
/
alter table ts_heya_tinryo_his_sum parallel 4;
