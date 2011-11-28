select count(*) from apa0902 apawk,ju1stdov30 ju1std
where
apawk.tinryo/apawk.senyu_m2 > ( ju1std.m2tin + ju1std.std * 30 )
and
apawk.jushocd1 = ju1std.jushocd1
and
apawk.senyu_m2 > 30
/
select count(*) from apa0902 apawk,ju1stdun30 ju1std
where
apawk.tinryo/apawk.senyu_m2 > ( ju1std.m2tin + ju1std.std * 30 )
and
apawk.jushocd1 = ju1std.jushocd1
and
apawk.senyu_m2 <= 30
/
