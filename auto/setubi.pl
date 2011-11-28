#!/usr/local/bin/perl


for ($i=0; $i<=78; $i++){
	printf "drop bitmap index setubidex%03d ;\n", $i;
	printf "create bitmap index setubidex%03d on ts_heya_setubi(setubi%03d) ;\n", $i, $i;
}
