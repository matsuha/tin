alter system flush buffer_cache; 
alter system flush shared_pool;
alter system set events '10949 trace name context forever, level 1'; 
alter system set events '10949 trace name context off';
