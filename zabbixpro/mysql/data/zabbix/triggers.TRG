TYPE=TRIGGERS
triggers='CREATE DEFINER=`zabbix`@`%` trigger triggers_insert after insert on triggers\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (5,new.triggerid,1,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger triggers_update after update on triggers\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (5,old.triggerid,2,unix_timestamp())' 'CREATE DEFINER=`zabbix`@`%` trigger triggers_delete before delete on triggers\nfor each row\ninsert into changelog (object,objectid,operation,clock)\nvalues (5,old.triggerid,3,unix_timestamp())'
sql_modes=1411383296 1411383296 1411383296
definers='zabbix@%' 'zabbix@%' 'zabbix@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=1708362443245161 1708362443259350 1708362443280927
