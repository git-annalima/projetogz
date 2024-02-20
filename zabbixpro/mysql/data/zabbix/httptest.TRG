TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger httptest_insert after insert on httptest\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (11,new.httptestid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httptest_update after update on httptest\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (11,old.httptestid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger httptest_delete before delete on httptest\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (11,old.httptestid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362442867534 1708362442924983 1708362442942238
