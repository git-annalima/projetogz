TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger functions_insert after insert on functions\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (7,new.functionid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger functions_update after update on functions\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (7,old.functionid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger functions_delete before delete on functions\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (7,old.functionid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443295033 1708362443303164 1708362443316952
